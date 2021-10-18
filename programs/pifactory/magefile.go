package pifactory

import (
	"riscv/bootloader"
	bld "riscv/build-scripts"

	"github.com/magefile/mage/sh"
)

const workDir = "./programs/pifactory"

// Build builds the pifactory program
func Build() error {
	if err := bld.InDir(workDir, bld.ElfPath, build); err != nil {
		return nil
	}

	return bootloader.Make(bld.ElfPath, bld.BootloaderPath, nil)
}

func build() error {
	if err := sh.RunV(
		"riscv64-unknown-elf-gcc",
		"-ffreestanding",
		"-nostartfiles",
		"-specs=nosys.specs",
		"-march=rv32im",
		"-mabi=ilp32",
		"-O2",

		"-c", "src/pifactory.c",
		"-o", "build/pifactory.o",
	); err != nil {
		return err
	}

	if err := sh.RunV(
		"riscv64-unknown-elf-as",
		"-march=rv32im",
		"-mabi=ilp32",

		"env/crt.S",
		"-o", "build/crt.o",
	); err != nil {
		return err
	}

	return sh.RunV(
		"riscv64-unknown-elf-gcc",
		"-ffreestanding",
		"-nostartfiles",
		"-specs=nosys.specs",
		"-march=rv32im",
		"-mabi=ilp32",
		"-O2",

		"-Xlinker",
		"-Tenv/link.ld",
		"build/pifactory.o",
		"build/crt.o",
		"-lgcc",
		"-lm",
		"-o", bld.ElfPath,
	)
}
