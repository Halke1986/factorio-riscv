package bootloader

import (
	_ "embed"
	"fmt"
	"io/ioutil"
	"os"
	"strings"
)

//go:embed bootloader-template.lua
var bootloaderTemplate string

// Make bootloader from an elf file. Data and text sections are read from the file and
// placed in a lua script, which can be used to create constant combinator ROMs in Factorio.
// Separate ROMs are created for text, data and optionally for reference data. The ROMs
// are aligned correctly in game to fit the CPU structure.
// Optional reference data is used by ISA compliance tests.
func Make(elfPath, bootloaderPath string, reference *[]uint32) error {
	rawElf, err := ioutil.ReadFile(elfPath)
	if err != nil {
		return err
	}

	text, data, err := readElf(rawElf)
	if err != nil {
		return err
	}

	withText := strings.Replace(bootloaderTemplate, "#TEXT#", wordsToString(text), 1)
	withData := strings.Replace(withText, "#DATA#", wordsToString(data), 1)

	bootloader := ""
	if reference != nil {
		bootloader = strings.Replace(withData, "#REFERENCE#", wordsToString(*reference), 1)
	} else {
		bootloader = strings.Replace(withData, "#REFERENCE#", "", 1)
	}

	output, err := os.Create(bootloaderPath)
	if err != nil {
		return err
	}

	_, err = fmt.Fprint(output, bootloader)
	return err
}

func wordsToString(words []uint32) string {
	result := ""

	for _, w := range words {
		result = result + fmt.Sprintf("\"%x\",", w)
	}

	return result
}
