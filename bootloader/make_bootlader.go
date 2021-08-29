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

func Make(elfPath, bootloaderPath string) error {
	rawElf, err := ioutil.ReadFile(elfPath)
	if err != nil {
		return err
	}

	text, data, err := readElf(rawElf)
	if err != nil {
		return err
	}

	withText := strings.Replace(bootloaderTemplate, "#TEXT#", wordsToString(text), 1)
	bootloader := strings.Replace(withText, "#DATA#", wordsToString(data), 1)

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
