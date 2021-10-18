package embench

import (
	"fmt"
	"path/filepath"
	"riscv/bootloader"
	bld "riscv/build-scripts"
	"strings"

	"github.com/magefile/mage/sh"
)

const workDir = "./programs/embench-iot"

// Build builds the selected benchmark suite
func Build(suite string) error {
	if err := bld.InDir(workDir, bld.ElfPath, func() error {
		return build(suite)
	}); err != nil {
		return nil
	}

	return bootloader.Make(bld.ElfPath, bld.BootloaderPath, nil)
}

func build(suite string) error {
	// List all suite sources.
	srcDir := fmt.Sprintf("src/%s/", suite)
	sources, err := filepath.Glob(srcDir + "*.c")
	if err != nil {
		return err
	}

	// List all required support sources.
	sources = appendStrings(sources,
		"support/beebsc.c",
		"support/main.c",
		"support/board.c",
		"env/crt.S",
	)

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
	return sh.RunV(
		"riscv64-unknown-elf-gcc",
		"-ffreestanding",
		"-nostartfiles",
		"-specs=nosys.specs",
		"-march=rv32im",
		"-mabi=ilp32",
		"-O2",

		"-Isrc/"+suite,
		"-Isupport",
		"-Iboard",
		"-DCPU_MHZ=1",
		"-DWARMUP_HEAT=0",

		"-c", filePath,
		"-o", objPath,
	)
}

func assemble(filePath, objPath string) error {
	return sh.RunV(
		"riscv64-unknown-elf-as",
		"-march=rv32im",
		"-mabi=ilp32",

		filePath,
		"-o", objPath,
	)
}

func link(objects []string) error {
	return sh.RunV(
		"riscv64-unknown-elf-gcc",
		appendStrings(
			"-ffreestanding",
			"-nostartfiles",
			"-specs=nosys.specs",
			"-march=rv32im",
			"-mabi=ilp32",
			"-O2",
			"-Xlinker",
			"-Tenv/link.ld",
			objects,
			"-lgcc",
			"-lm",
			"-o", bld.ElfPath,
		)...,
	)
}

func makeObjPath(sourcePath string) string {
	elems := strings.Split(sourcePath, "/")
	file := elems[len(elems)-1]
	fileName := strings.Split(file, ".")[0]
	return "./build/" + fileName + ".o"
}

// appendStrings appends strings and string slices into one slice.
func appendStrings(ss ...interface{}) []string {
	result := []string(nil)
	for i := range ss {
		switch v := ss[i].(type) {
		case string:
			result = append(result, v)
		case []string:
			result = append(result, v...)
		}
	}

	return result
}
