package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"

	"github.com/yalue/elf_reader"
)

const (
	textSectionName = ".text.init"
	dataSectionName = ".data"

	wordSize  = 4
	frameSize = wordSize * 256
)

type elfSection struct {
	header elf_reader.ELFSectionHeader
	bytes  []byte
}

type elfSections struct {
	text elfSection
	data elfSection
}

func main() {
	if len(os.Args) < 3 {
		fmt.Println("Usage: compiler elf-input-path bytecode-output-path")
		return
	}

	rawElf, err := ioutil.ReadFile(os.Args[1])
	if err != nil {
		log.Fatal(err)
	}

	words, err := compile(rawElf)
	if err != nil {
		log.Fatal(err)
	}

	output, err := os.Create(os.Args[2])
	defer func() { _ = output.Close() }()
	if err != nil {
		log.Fatal(err)
	}

	for _, w := range words {
		_, err := fmt.Fprintf(output, "\"%x\",", w)
		if err != nil {
			log.Fatal(err)
		}
	}
}

// compile elf file to bytecode.
func compile(rawElf []byte) ([]uint32, error) {
	elf, err := elf_reader.ParseELFFile(rawElf)
	if err != nil {
		return nil, err
	}

	sections, err := readSections(elf)
	if err != nil {
		return nil, err
	}

	text, err := handleTextSection(*sections)
	if err != nil {
		return nil, err
	}

	data, err := handleDataSection(*sections)
	if err != nil {
		return nil, err
	}

	return append(text, data...), nil
}

// readSections reads selected elf file sections.
func readSections(elf elf_reader.ELFFile) (*elfSections, error) {
	allSections := map[string]elfSection{}

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

		header, err := elf.GetSectionHeader(i)
		if err != nil {
			return nil, err
		}

		bytes, err := elf.GetSectionContent(i)
		if err != nil {
			return nil, err
		}

		allSections[name] = elfSection{
			header: header,
			bytes:  bytes,
		}
	}

	text, found := allSections[textSectionName]
	if !found {
		return nil, fmt.Errorf("section %s not found", textSectionName)
	}

	data, found := allSections[dataSectionName]
	if !found {
		return nil, fmt.Errorf("section %s not found", dataSectionName)
	}

	return &elfSections{
		text: text,
		data: data,
	}, nil
}

// handleTextSection reads bytecode and asserts instructions.
func handleTextSection(sections elfSections) ([]uint32, error) {
	if sections.text.header.GetVirtualAddress() != 0 {
		fmt.Printf("warning: %s section not starting at address 0x0\n", textSectionName)
	}

	words, err := parseSection(sections.text, textSectionName)
	if err != nil {
		return nil, err
	}

	usedInstructions := map[string]int{}

	for _, w := range words {
		// Null instruction is used for padding.
		if w == 0 {
			continue
		}

		inst, err := parseInstruction(w)
		if err != nil {
			return nil, err
		}

		usedInstructions[inst.Name]++
	}

	for k, v := range usedInstructions {
		fmt.Println(k, v)
	}

	return words, nil
}

// handleDataSection reads elf data and adds padding between text and data.
func handleDataSection(sections elfSections) ([]uint32, error) {
	textEnd := sections.text.header.GetVirtualAddress() + sections.text.header.GetSize()
	padding := (sections.data.header.GetVirtualAddress() - textEnd) / wordSize

	fmt.Printf("padding before data: %d\n", padding)

	if padding < 0 {
		return nil, fmt.Errorf("sections overlap")
	}

	words, err := parseSection(sections.data, dataSectionName)
	if err != nil {
		return nil, err
	}

	return append(make([]uint32, padding), words...), nil
}

// parseSection reads elfSection contents as slice of 32-bit words, and displays warnings.
func parseSection(section elfSection, sectionName string) ([]uint32, error) {
	if section.header.GetVirtualAddress()%frameSize != 0 {
		fmt.Printf("warning: %s section not aligned to frame boundry\n", sectionName)
	}

	if section.header.GetSize()%wordSize != 0 {
		return nil, fmt.Errorf("%s section not multiple of %d bytes\n", sectionName, wordSize)
	}

	fmt.Println(section.header.String())

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
