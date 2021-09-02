package bootloader

import (
	"fmt"

	"github.com/yalue/elf_reader"
)

const (
	initSectionName = ".text.init"
	textSectionName = ".text"

	srodataSectionName = ".srodata"
	rodataSectionName  = ".rodata"
	dataSectionName    = ".data"

	wordSize = 4

	codeAddress = 0x4000000
	dataAddress = 0x0000000
)

type elfSection struct {
	header elf_reader.ELFSectionHeader
	bytes  []byte
}

// readElf elf file to bytecode.
func readElf(rawElf []byte) ([]uint32, []uint32, error) {
	elf, err := elf_reader.ParseELFFile(rawElf)
	if err != nil {
		return nil, nil, err
	}

	sections, err := readSections(elf)
	if err != nil {
		return nil, nil, err
	}

	text, err := parseTextSection(sections)
	if err != nil {
		return nil, nil, err
	}

	data, err := parseDataSections(sections)
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

		//fmt.Println(name, header.String())

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

// parseTextSection reads bytecode and asserts instructions.
func parseTextSection(sections map[string]elfSection) ([]uint32, error) {
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

		//fmt.Printf("%x %s\n", 0x4000000+i*4, inst.name)

		usedInstructions[inst.name]++

		if !inst.implemented {
			unimplementedInstructions[inst.name]++
		}
	}

	for k, v := range unimplementedInstructions {
		fmt.Println(k, v)
	}

	return words, nil
}

// parseDataSections reads elf data section.
func parseDataSections(sections map[string]elfSection) ([]uint32, error) {
	dataSections := []string{
		srodataSectionName,
		rodataSectionName,
		dataSectionName,
	}

	data := []uint32(nil)
	sectionNum := 0

	for _, sectionName := range dataSections {
		if section, found := sections[sectionName]; found {
			sectionNum++
			if section.header.GetVirtualAddress() != dataAddress {
				fmt.Printf("%s starting at address %x\n", sectionName, dataAddress)
			}

			sectionData, err := parseSection(section, initSectionName)
			if err != nil {
				return nil, err
			}

			data = sectionData
		}
	}

	if sectionNum > 1 {
		return nil, fmt.Errorf("multiple data sections found")
	}

	return data, nil
}

func parseDataSection(sections map[string]elfSection) ([]uint32, error) {
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
