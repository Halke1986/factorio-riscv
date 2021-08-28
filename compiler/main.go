package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"

	"github.com/yalue/elf_reader"
)

const (
	initSectionName   = ".text.init"
	textSectionName   = ".text"
	rodataSectionName = ".rodata"
	dataSectionName   = ".data"

	wordSize  = 4
	frameSize = wordSize * 256

	codeAddress = 0x4000000
	dataAddress = 0x0000000
)

type elfSection struct {
	header elf_reader.ELFSectionHeader
	bytes  []byte
}

func main() {
	if len(os.Args) < 4 {
		fmt.Println("Usage: compiler elf-input-path text-output-path data-output-path")
		return
	}

	rawElf, err := ioutil.ReadFile(os.Args[1])
	if err != nil {
		log.Fatal(err)
	}

	text, data, err := compile(rawElf)
	if err != nil {
		log.Fatal(err)
	}

	if err := outputWords(text, os.Args[2]); err != nil {
		log.Fatal(err)
	}

	if err := outputWords(data, os.Args[3]); err != nil {
		log.Fatal(err)
	}
}

// compile elf file to bytecode.
func compile(rawElf []byte) ([]uint32, []uint32, error) {
	elf, err := elf_reader.ParseELFFile(rawElf)
	if err != nil {
		return nil, nil, err
	}

	sections, err := readSections(elf)
	if err != nil {
		return nil, nil, err
	}

	text, err := handleTextSection(sections)
	if err != nil {
		return nil, nil, err
	}

	data, err := handleDataSection(sections)
	if err != nil {
		return nil, nil, err
	}

	return text, data, nil
}

// readSections reads selected elf file sections.
func readSections(elf elf_reader.ELFFile) (map[string]elfSection, error) {
	sections := map[string]elfSection{}

	sectionNum := elf.GetSectionCount()
	for i := uint16(0); i < sectionNum; i++ {
		// Section 0 has no name.
		if i == 0 {
			continue
		}

		name, err := elf.GetSectionName(i)
		if err != nil {
			return nil, err
		}

		// .bss should not contain any data in the elf file.
		if name == ".bss" {
			continue
		}

		header, err := elf.GetSectionHeader(i)
		if err != nil {
			return nil, err
		}

		bytes, err := elf.GetSectionContent(i)
		if err != nil {
			return nil, err
		}

		sections[name] = elfSection{
			header: header,
			bytes:  bytes,
		}
	}

	return sections, nil
}

// handleTextSection reads bytecode and asserts instructions.
func handleTextSection(sections map[string]elfSection) ([]uint32, error) {
	words := []uint32(nil)

	init, initFound := sections[initSectionName]
	text, textFound := sections[textSectionName]

	if initFound {
		if init.header.GetVirtualAddress() != codeAddress {
			fmt.Printf("bytecode not starting at address %x\n", codeAddress)
		}

		initWords, err := parseSection(init, initSectionName)
		if err != nil {
			return nil, err
		}

		words = initWords
	}

	if textFound {
		if !initFound && text.header.GetVirtualAddress() != codeAddress {
			fmt.Printf("bytecode not starting at address %x\n", codeAddress)
		}

		textWords, err := parseSection(text, textSectionName)
		if err != nil {
			return nil, err
		}

		words = append(words, textWords...)
	}

	usedInstructions := map[string]int{}
	unimplementedInstructions := map[string]int{}

	for _, w := range words {
		// Null instruction is used for padding.
		if w == 0 {
			continue
		}

		inst, err := parseInstruction(w)
		if err != nil {
			return nil, err
		}

		//fmt.Printf("%x %s\n", 0x4000000+i*4, inst.Name)

		usedInstructions[inst.Name]++

		if !inst.Implemented {
			unimplementedInstructions[inst.Name]++
		}
	}

	for k, v := range unimplementedInstructions {
		fmt.Println(k, v)
	}

	return words, nil
}

// handleDataSection reads elf data section.
func handleDataSection(sections map[string]elfSection) ([]uint32, error) {
	// .rodata takes priority.
	if rodata, rodataFound := sections[rodataSectionName]; rodataFound {
		if rodata.header.GetVirtualAddress() != dataAddress {
			fmt.Printf("data starting at address %x\n", dataAddress)
		}

		return parseSection(rodata, initSectionName)
	}

	// look for .data if .rodata wasn't found.
	if data, dataFound := sections[dataSectionName]; dataFound {
		if data.header.GetVirtualAddress() != dataAddress {
			fmt.Printf("data starting at address %x\n", dataAddress)
		}

		return parseSection(data, initSectionName)
	}

	return nil, nil
}

// parseSection reads elfSection contents as slice of 32-bit words.
func parseSection(section elfSection, sectionName string) ([]uint32, error) {
	if section.header.GetSize()%wordSize != 0 {
		return nil, fmt.Errorf("%s section not multiple of %d bytes\n", sectionName, wordSize)
	}

	//fmt.Println(section.header.String())

	words := make([]uint32, len(section.bytes)/wordSize)
	for i := 0; i < len(words); i++ {

		b := i * wordSize
		words[i] += uint32(section.bytes[b]) << 0
		words[i] += uint32(section.bytes[b+1]) << 8
		words[i] += uint32(section.bytes[b+2]) << 16
		words[i] += uint32(section.bytes[b+3]) << 24
	}

	return words, nil
}

func outputWords(words []uint32, fileName string) error {
	output, err := os.Create(fileName)
	defer func() { _ = output.Close() }()
	if err != nil {
		return err
	}

	for _, w := range words {
		_, err := fmt.Fprintf(output, "\"%x\",", w)
		if err != nil {
			return err
		}
	}

	return nil
}
