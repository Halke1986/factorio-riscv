package embench

import (
	"fmt"
	"path/filepath"
	"strings"

	"github.com/magefile/mage/sh"
)

const workDir = "./programs/embench-iot"

// Build build selected benchmark
func Build(suite string) error {
	// List all suite sources.
	srcDir := fmt.Sprintf("%s/src/%s/", workDir, suite)
	sources, err := filepath.Glob(srcDir + "*.c")
	if err != nil {
		return err
	}

	// List all required support sources.
	sources = append(sources, []string{
		"${WORK_DIR}/support/beebsc.c",
		"${WORK_DIR}/support/main.c",
		"${WORK_DIR}/support/board.c",
		"${WORK_DIR}/board/crt.S",
	}...)

	// Compile or assemble all required sources.
	objects := []string(nil)
	for _, sourcePath := range sources {
		objPath := makeObjPath(sourcePath)
		objects = append(objects, objPath)

		if strings.HasSuffix(sourcePath, "c") {
			if err := compile(sourcePath, objPath, suite); err != nil {
				return err
			}
		} else {
			if err := assemble(sourcePath, objPath); err != nil {
				return err
			}
		}
	}

	return link(objects)
}

func compile(filePath, objPath, suite string) error {
	return sh.RunWithV(
		map[string]string{
			"WORK_DIR": workDir,
			"SUITE":    suite,
		},
		"riscv64-unknown-elf-gcc",
		"-ffreestanding",
		"-nostartfiles",
		"-march=rv32i",
		"-mabi=ilp32",
		"-O2",

		"-I${WORK_DIR}/src/${SUITE}",
		"-I${WORK_DIR}/support",
		"-I${WORK_DIR}/board",
		"-DCPU_MHZ=1",
		"-DWARMUP_HEAT=0",

		"-c", filePath,
		"-o", objPath,
	)
}

func assemble(filePath, objPath string) error {
	return sh.RunWithV(
		map[string]string{
			"WORK_DIR": workDir,
		},
		"riscv64-unknown-elf-as",
		"-march=rv32i",
		"-mabi=ilp32",

		filePath,
		"-o", objPath,
	)
}

func link(objects []string) error {
	return sh.RunWithV(
		map[string]string{
			"WORK_DIR": workDir,
		},
		"riscv64-unknown-elf-gcc",
		appendAll(
			[]string{
				"-ffreestanding",
				"-nostartfiles",
				"-march=rv32i",
				"-mabi=ilp32",
				"-O2",
				"-Xlinker",
				"-T${WORK_DIR}/board/link.ld",
			},
			objects,
			[]string{
				"-lgcc",
				"-lm",
				"-oelf",
			},
		)...,
	)
}

func makeObjPath(sourcePath string) string {
	elems := strings.Split(sourcePath, "/")
	file := elems[len(elems)-1]
	fileName := strings.Split(file, ".")[0]
	return "${WORK_DIR}/build/" + fileName + ".o"
}

func appendAll(ss ...[]string) []string {
	all := []string(nil)
	for i := range ss {
		all = append(all, ss[i]...)
	}

	return all
}
