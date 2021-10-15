//go:build mage
// +build mage

package main

import (
	"os"
	// mage:import embench
	_ "riscv/programs/embench-iot"
	// mage:import compliance
	_ "riscv/programs/compliance-tests"

	"github.com/magefile/mage/sh"
)

const (
	elfPath         = "elf"
	disassemblyPath = "out.asm"
)

// Disassembly print disassembly of the elf file text section to out.asm file.
func Disassembly() error {
	f, err := os.Create(disassemblyPath)
	if err != nil {
		return err
	}

	_, err = sh.Exec(
		nil, f, os.Stderr,
		"riscv64-linux-gnu-objdump",
		"-d",
		elfPath,
		"-t",
		"-Mno-aliases",
		"--visualize-jumps",
	)

	return err
}

// PrintData print hex dump of the elf file data section
func PrintData(section string) error {
	return sh.RunV("riscv64-linux-gnu-objdump", "-s", "-j", section, elfPath)
}
