package embench

import (
	_ "embed"
	"fmt"
	"io/ioutil"
	"os"
	"riscv/bootloader"
	"strings"

	"github.com/magefile/mage/sh"
)

//go:embed reference-template.lua
var referenceTemplate string

const (
	workDir = "./programs/compliance-tests"

	elfPath             = "elf"
	bootloaderPath      = "bootloader.lua"
	referenceOutputPath = "bootloader-reference.lua"
)

// Build build test for selected instruction
func Build(instruction string) error {
	if err := build(instruction); err != nil {
		return err
	}

	if err := makeReference(instruction); err != nil {
		return err
	}

	return bootloader.Make(elfPath, bootloaderPath)
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
		"-march=rv32i",
		"-mabi=ilp32",

		"${WORK_DIR}/src/${INSTRUCTION}-01.S",
		"-I${WORK_DIR}/env",
		"-T${WORK_DIR}/env/link.ld",

		"-o", elfPath,
	)
}

func makeReference(instruction string) error {
	referencePath := fmt.Sprintf("%s/references/%s-01.reference_output", workDir, instruction)
	referenceRaw, err := ioutil.ReadFile(referencePath)
	if err != nil {
		return err
	}

	firstFrame := []byte(nil)
	for i := 0; i < 256; i++ {
		firstFrame = append(firstFrame, []byte(`"0",`)...)
	}

	reference := strings.ReplaceAll(string(referenceRaw), "\n", `","`)
	reference = strings.TrimSuffix(reference, `"`)
	reference = string(firstFrame) + `"` + reference
	referenceBootloader := strings.Replace(referenceTemplate, "#REFERENCE#", reference, 1)

	output, err := os.Create(referenceOutputPath)
	if err != nil {
		return err
	}

	_, err = fmt.Fprint(output, referenceBootloader)
	return err
}
