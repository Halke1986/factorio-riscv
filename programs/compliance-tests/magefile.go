package embench

import (
	"bufio"
	_ "embed"
	"fmt"
	"os"
	"riscv/tools/bootloader"
	bld "riscv/tools/build-scripts"
	"strconv"

	"github.com/magefile/mage/sh"
)

const workDir = "./programs/compliance-tests/"

// Build builds test for a selected instruction
func Build(instruction string) error {
	if err := compile(instruction); err != nil {
		return err
	}

	referenceData, err := readReference(instruction)
	if err != nil {
		return err
	}

	return bootloader.Make(bld.ElfPath, bld.BootloaderPath, &referenceData)
}

func compile(instruction string) error {
	return sh.RunV(
		"riscv64-unknown-elf-gcc",
		"-ffreestanding",
		"-nostdlib",
		"-march=rv32im",
		"-mabi=ilp32",

		workDir+"src/"+instruction+"-01.S",
		"-I"+workDir+"arch",
		"-Tenv/link.ld",

		"-o", bld.ElfPath,
	)
}

func readReference(instruction string) ([]uint32, error) {
	referencePath := fmt.Sprintf(workDir+"references/%s-01.reference_output", instruction)
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
