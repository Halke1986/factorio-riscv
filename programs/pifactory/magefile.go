//go:build mage
// +build mage

package main

import (
	"riscv/bootloader"

	"github.com/magefile/mage/sh"
)

const (
	elfPath        = "../../elf"
	bootloaderPath = "../../bootloader.lua"
)

func Build() error {
	if err := sh.RunV(
		"riscv64-unknown-elf-gcc",
		"-ffreestanding",
		"-nostartfiles",
		"-specs=nosys.specs",
		"-march=rv32im",
		"-mabi=ilp32",
		"-O2",

		"-c", "pifactory.c",
		"-o", "pifactory.o",
	); err != nil {
		return err
	}

	if err := sh.RunV(
		"riscv64-unknown-elf-as",
		"-march=rv32im",
		"-mabi=ilp32",

		"crt.S",
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
		"-Tlink.ld",
		"pifactory.o",
		"crt.o",
		"-lgcc",
		"-lm",
		"-o", elfPath,
	); err != nil {
		return err
	}

	return bootloader.Make(elfPath, bootloaderPath, nil)
}
