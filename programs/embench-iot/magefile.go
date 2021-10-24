package embench

import (
	"fmt"
	"path/filepath"
	"riscv/tools/bootloader"
	bld "riscv/tools/build-scripts"
	"strings"

	"github.com/magefile/mage/sh"
)

const workDir = "./programs/embench-iot/"

// Build builds the selected benchmark suite
func Build(suite string) error {
	// List all suite sources.
	srcDir := fmt.Sprintf(workDir+"src/%s/", suite)
	sources, err := filepath.Glob(srcDir + "*.c")
	if err != nil {
		return err
	}

	// List all required support sources.
	sources = bld.AppendStrings(sources,
		workDir+"support/beebsc.c",
		workDir+"support/main.c",
		workDir+"support/board.c",
		"env/crt.S",
	)

	// Compile or assemble all required sources.
	objects := []string(nil)
	defer func() { _ = bld.Clean(objects) }()

	for _, sourcePath := range sources {
		objPath := bld.MakeObjPath(sourcePath, "")
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

	if err := link(objects); err != nil {
		return err
	}

	return bootloader.Make(bld.ElfPath, bld.BootloaderPath, nil)
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

		"-I"+workDir+"src/"+suite,
		"-I"+workDir+"support",
		"-I"+workDir+"board",
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
		bld.AppendStrings(
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
