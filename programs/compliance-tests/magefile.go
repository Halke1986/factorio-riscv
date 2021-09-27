package embench

import (
	"bufio"
	_ "embed"
	"fmt"
	"os"
	"riscv/bootloader"
	"strconv"

	"github.com/magefile/mage/sh"
)

const (
	workDir = "./programs/compliance-tests"

	elfPath        = "elf"
	bootloaderPath = "bootloader.lua"
)

// Build build test for selected instruction
func Build(instruction string) error {
	if err := build(instruction); err != nil {
		return err
	}

	referenceData, err := readReference(instruction)
	if err != nil {
		return err
	}

	return bootloader.Make(elfPath, bootloaderPath, &referenceData)
}

func build(instruction string) error {
	return sh.RunWithV(
		map[string]string{
			"WORK_DIR":    workDir,
			"INSTRUCTION": instruction,
		},
		"riscv64-unknown-elf-gcc",
		"-ffreestanding",
		"-nostdlib",
		"-march=rv32im",
		"-mabi=ilp32",

		"${WORK_DIR}/src/${INSTRUCTION}-01.S",
		"-I${WORK_DIR}/env",
		"-T${WORK_DIR}/env/link.ld",

		"-o", elfPath,
	)
}

func readReference(instruction string) ([]uint32, error) {
	referencePath := fmt.Sprintf("%s/references/%s-01.reference_output", workDir, instruction)
	f, err := os.Open(referencePath)
	if err != nil {
		return nil, err
	}
	defer func() { _ = f.Close() }()

	referenceData := []uint32(nil)

	sc := bufio.NewScanner(f)
	for sc.Scan() {
		i, err := strconv.ParseInt(sc.Text(), 16, 64)
		if err != nil {
			return nil, err
		}
		referenceData = append(referenceData, uint32(i))
	}
	if err := sc.Err(); err != nil {
		return nil, err
	}

	return referenceData, nil
}
