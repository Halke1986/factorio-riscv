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
	sdataSectionName   = ".sodata"
	dataSectionName    = ".data"

	wordSize = 4

	codeAddress = 0x4000000
	dataAddress = 0x0000000
)

type elfSection struct {
	name   string
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

	text, err := parseTextSections(sections)
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
			name:   name,
			header: header,
			bytes:  bytes,
		}
	}

	return sections, nil
}

// parseTextSections reads bytecode and asserts instructions.
func parseTextSections(sections map[string]elfSection) ([]uint32, error) {
	words := []uint32(nil)

	init, initFound := sections[initSectionName]
	text, textFound := sections[textSectionName]

	if initFound {
		if init.header.GetVirtualAddress() != codeAddress {
			fmt.Printf("bytecode not starting at address %x\n", codeAddress)
		}

		initWords, err := parseSection(init)
		if err != nil {
			return nil, err
		}

		words = initWords
	}

	if textFound {
		if !initFound && text.header.GetVirtualAddress() != codeAddress {
			fmt.Printf("bytecode not starting at address %x\n", codeAddress)
		}

		textWords, err := parseSection(text)
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
func parseDataSections(allSections map[string]elfSection) ([]uint32, error) {
	sectionNames := []string{
		srodataSectionName,
		rodataSectionName,
		sdataSectionName,
		dataSectionName,
	}

	// Find all data sections.
	dataSections := []elfSection(nil)
	for _, sectionName := range sectionNames {
		if section, found := allSections[sectionName]; found {
			dataSections = append(dataSections, section)
		}
	}

	if len(dataSections) == 0 {
		return nil, nil
	}

	// Check if sections are in correct order and don't overlap.
	for i := 0; i < len(dataSections)-1; i++ {
		h1 := dataSections[i].header
		h2 := dataSections[i+1].header
		if h1.GetVirtualAddress() > h2.GetVirtualAddress() {
			return nil, fmt.Errorf("data sections in incorrect order")
		}

		if h1.GetVirtualAddress()+h1.GetSize() > h2.GetVirtualAddress() {
			return nil, fmt.Errorf("data sections %s and %s overlap",
				dataSections[i].name, dataSections[i+1].name)
		}
	}

	if dataSections[0].header.GetVirtualAddress() != dataAddress {
		return nil, fmt.Errorf("data section not starting at address %x\n", dataAddress)
	}

	lastSection := dataSections[len(dataSections)-1]
	dataLen := lastSection.header.GetVirtualAddress() + lastSection.header.GetSize()

	// Append data from all data sections.
	data := make([]uint32, dataLen/wordSize)
	for _, section := range dataSections {
		sectionData, err := parseSection(section)
		if err != nil {
			return nil, err
		}

		start := section.header.GetVirtualAddress() / wordSize
		for i := uint64(0); i < uint64(len(sectionData)); i++ {
			data[start+i] = sectionData[i]
		}
	}

	return data, nil
}

// parseSection reads elfSection contents as slice of 32-bit words.
func parseSection(section elfSection) ([]uint32, error) {
	if section.header.GetSize()%wordSize != 0 {
		return nil, fmt.Errorf("%s section not multiple of %d bytes\n", section.name, wordSize)
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
