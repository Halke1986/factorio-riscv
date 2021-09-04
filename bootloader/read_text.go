package bootloader

import (
	"fmt"
)

// parseTextSections reads bytecode and asserts instructions.
func parseTextSections(sections map[string]elfSection) ([]uint32, error) {
	bytes := []byte(nil)

	init, initFound := sections[initSectionName]
	text, textFound := sections[textSectionName]

	if initFound {
		if init.header.GetVirtualAddress() != codeAddress {
			fmt.Printf("bytecode not starting at address %x\n", codeAddress)
		}

		bytes = init.bytes
	}

	if textFound {
		if !initFound && text.header.GetVirtualAddress() != codeAddress {
			fmt.Printf("bytecode not starting at address %x\n", codeAddress)
		}

		bytes = append(bytes, text.bytes...)
	}

	words := bytesToWords(bytes)

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
