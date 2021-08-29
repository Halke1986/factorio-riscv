//go:build mage
// +build mage

package main

import (
	"riscv/bootloader"
	// mage:import embench
	_ "riscv/programs/embench-iot"

	"github.com/magefile/mage/sh"
)

const elfPath = "elf"
const bootloaderPath = "bootloader.lua"

// Disassembly print disassembly of the elf file text section
func Disassembly() error {
	return sh.RunV("riscv64-linux-gnu-objdump", "-d", elfPath, "-t")
}

// PrintData print hex dump of the elf file data section
func PrintData(section string) error {
	return sh.RunV("riscv64-linux-gnu-objdump", "-s", "-j", section, elfPath)
}

func Bootloader() error {
	return bootloader.Make(elfPath, bootloaderPath)
}
