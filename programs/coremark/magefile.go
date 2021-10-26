package coremark

import (
	"riscv/tools/bootloader"
	bld "riscv/tools/build-scripts"
	"strings"

	"github.com/magefile/mage/sh"
)

const workDir = "./programs/coremark/"

// BuildHost builds the coremark binary for execution on host
func BuildHost() error {
	return sh.RunV(
		"gcc",

		workDir+"src/core_list_join.c",
		workDir+"src/core_main.c",
		workDir+"src/core_matrix.c",
		workDir+"src/core_state.c",
		workDir+"src/core_util.c",
		workDir+"posix/core_portme.c",
		workDir+"posix/core_portme_posix_overrides.c",
		"env/printf/printf.c",

		"-I", workDir+"posix/",
		"-I", workDir+"src/",
		"-I", "env/printf/",

		"-DCOMPILER_FLAGS=\"-O2\"",
		"-DCORE_DEBUG=1",
		"-O2",

		"-o", "coremark.run",
	)
}

// Build builds coremark benchmark
func Build() error {
	sources := []string{
		workDir + "src/core_list_join.c",
		workDir + "src/core_main.c",
		workDir + "src/core_matrix.c",
		workDir + "src/core_state.c",
		workDir + "src/core_util.c",

		workDir + "board/core_portme.c",
		"env/printf/printf.c",
		"env/printf/putchar.c",
		"env/crt.S",
	}

	// Compile or assemble all required sources.
	objects := []string(nil)
	defer func() { _ = bld.Clean(objects) }()

	for _, sourcePath := range sources {
		objPath := bld.MakeObjPath(sourcePath, "")
		objects = append(objects, objPath)

		if strings.HasSuffix(sourcePath, "c") {
			if err := compile(sourcePath, objPath); err != nil {
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

func compile(filePath, objPath string) error {
	return sh.RunV(
		"riscv64-unknown-elf-gcc",
		"-ffreestanding",
		"-nostartfiles",
		"-specs=nosys.specs",
		"-march=rv32im",
		"-mabi=ilp32",
		"-O2",

		"-I", workDir+"src/",
		"-I", workDir+"board/",
		"-I", "env/",
		"-I", "env/printf",

		"-DCOMPILER_FLAGS=\"-O2\"",
		"-DITERATIONS=1",
		"-DCLOCKS_PER_SEC=60",
		"-DCORE_DEBUG=1",

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
