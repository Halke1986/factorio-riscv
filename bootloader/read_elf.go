package bootloader

import (
	"encoding/binary"

	"github.com/yalue/elf_reader"
)

type elfSection struct {
	name   string
	header elf_reader.ELFSectionHeader
	bytes  []byte
}

// readElf elf file and extract text and data.
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

// readSections reads elf file sections.
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

func bytesToWords(data []byte) []uint32 {
	// Pad with zeroes if bytes aren't aligned to word boundary.
	if len(data)%wordSize != 0 {
		data = append(data, make([]byte, wordSize)...)
	}

	words := make([]uint32, len(data)/wordSize)
	for i := 0; i < len(words); i++ {
		words[i] = binary.LittleEndian.Uint32(data[i*wordSize:])
	}

	return words
}
