package coremark

import (
	"riscv/bootloader"
	bld "riscv/build-scripts"
	"strings"

	"github.com/magefile/mage/sh"
)

const workDir = "./programs/coremark"

// BuildHost builds the coremark binary for execution on host
func BuildHost() error {
	return bld.InDir(workDir, "coremark.run", buildHost)
}

func buildHost() error {
	return sh.RunV(
		"gcc",

		"src/core_list_join.c",
		"src/core_main.c",
		"src/core_matrix.c",
		"src/core_state.c",
		"src/core_util.c",
		"posix/core_portme.c",

		"-I", "posix/",
		"-I", "src/",

		"-DCOMPILER_FLAGS=\"-O2\"",
		"-DCORE_DEBUG=1",

		"-O2",

		"-o", "coremark.run",
	)
}

// Build builds coremark benchmark
func Build() error {
	if err := bld.InDir(workDir, bld.ElfPath, build); err != nil {
		return err
	}

	return bootloader.Make(bld.ElfPath, bld.BootloaderPath, nil)
}

func build() error {
	sources := []string{
		"src/core_list_join.c",
		"src/core_main.c",
		"src/core_matrix.c",
		"src/core_state.c",
		"src/core_util.c",

		"env/core_portme.c",
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

	return link(objects)
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

		"-Isrc/",
		"-Ienv/",

		"-DCOMPILER_FLAGS=\"-O2\"",
		"-DITERATIONS=1",
		"-DCLOCKS_PER_SEC=60",
		"-DCORE_DEBUG=1",

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
