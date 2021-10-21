//go:build mage
// +build mage

package main

import (
	"os"
	bld "riscv/tools/build-scripts"

	// mage:import embench
	_ "riscv/programs/embench-iot"
	// mage:import compliance
	_ "riscv/programs/compliance-tests"
	// mage:import pifactory
	_ "riscv/programs/pifactory"

	"github.com/magefile/mage/sh"
)

// Disassembly prints disassembly of the elf file text section to out.asm file
func Disassembly() error {
	f, err := os.Create(bld.DisassemblyPath)
	if err != nil {
		return err
	}

	_, err = sh.Exec(
		nil, f, os.Stderr,
		"riscv64-linux-gnu-objdump",
		"-d",
		bld.ElfPath,
		"-t",
		"-Mno-aliases",
		"--visualize-jumps",
	)

	return err
}

// PrintData prints hex dump of the elf file data section
func PrintData(section string) error {
	return sh.RunV("riscv64-linux-gnu-objdump", "-s", "-j", section, bld.ElfPath)
}
