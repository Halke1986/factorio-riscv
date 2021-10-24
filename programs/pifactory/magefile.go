package pifactory

import (
	"riscv/tools/bootloader"
	bld "riscv/tools/build-scripts"

	"github.com/magefile/mage/sh"
)

const workDir = "./programs/pifactory/"

// Build builds the pifactory program.
func Build() error {
	defer func() {
		_ = bld.Clean([]string{
			"pifactory.o",
			"crt.o",
		})
	}()

	if err := sh.RunV(
		"riscv64-unknown-elf-gcc",
		"-ffreestanding",
		"-nostartfiles",
		"-specs=nosys.specs",
		"-march=rv32im",
		"-mabi=ilp32",
		"-O2",

		"-c", workDir+"src/pifactory.c",
		"-o", "pifactory.o",
	); err != nil {
		return err
	}

	if err := sh.RunV(
		"riscv64-unknown-elf-as",
		"-march=rv32im",
		"-mabi=ilp32",

		"env/crt.S",
		"-o", "crt.o",
	); err != nil {
		return err
	}

	if err := sh.RunV(
		"riscv64-unknown-elf-gcc",
		"-ffreestanding",
		"-nostartfiles",
		"-specs=nosys.specs",
		"-march=rv32im",
		"-mabi=ilp32",
		"-O2",

		"-Xlinker",
		"-Tenv/link.ld",
		"pifactory.o",
		"crt.o",
		"-lgcc",
		"-lm",
		"-o", bld.ElfPath,
	); err != nil {
		return err
	}

	return bootloader.Make(bld.ElfPath, bld.BootloaderPath, nil)
}
