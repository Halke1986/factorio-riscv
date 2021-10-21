package bootloader

import (
	"fmt"
)

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
	bytesNum := lastSection.header.GetVirtualAddress() + lastSection.header.GetSize()

	// Append data from all data sections.
	bytes := make([]byte, bytesNum)
	for _, section := range dataSections {
		start := section.header.GetVirtualAddress()
		for i := uint64(0); i < uint64(len(section.bytes)); i++ {
			bytes[start+i] = section.bytes[i]
		}
	}

	return bytesToWords(bytes), nil
}
