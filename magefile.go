//go:build mage
// +build mage

package main

import (
	// mage:import embench
	_ "riscv/programs/embench-iot"
	// mage:import compliance
	_ "riscv/programs/compliance-tests"

	"github.com/magefile/mage/sh"
)

const elfPath = "elf"

// Disassembly print disassembly of the elf file text section
func Disassembly() error {
	return sh.RunV("riscv64-linux-gnu-objdump", "-d", elfPath, "-t")
}

// PrintData print hex dump of the elf file data section
func PrintData(section string) error {
	return sh.RunV("riscv64-linux-gnu-objdump", "-s", "-j", section, elfPath)
}
