package main

import (
	"bufio"
	"bytes"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"strconv"
)

type Instruction struct {
	InstructionType
	encoded uint32
}

func main() {
	instructions, err := readInstructions()
	if err != nil {
		log.Fatal(err)
	}

	//for n, i := range instructions {
	//	fmt.Printf("%d:  %s %d\n", (n+1)*4, i.Name, i.encoded)
	//}

	//Print instructions and base 10 integers.
	for _, i := range instructions {
		fmt.Printf("%d,", i.encoded)
	}

	//encountered := map[string]Instruction{}
	//for _, i := range instructions {
	//	encountered[i.Name] = i
	//}
	//
	//for k := range encountered {
	//	fmt.Println(k)
	//}
}

func readInstructions() ([]Instruction, error) {
	// Read code from pipe.
	// Code is supposed to be the output of `od -An -x` command, eg:
	// 0113 ff41 2423 0011 2223 0081 0413 00c1
	// where each 32-bit instruction is split into 2 2-byte parts encoded on hex.
	buf, err := ioutil.ReadAll(bufio.NewReader(os.Stdin))
	if err != nil {
		return nil, err
	}

	// Remove whitespaces.
	buf = bytes.ReplaceAll(buf, []byte("\n"), nil)
	buf = bytes.TrimSpace(buf)

	// Merge and parse instruction parts.
	parts := bytes.Split(buf, []byte(" "))
	instructions := []Instruction(nil)
	for i := 0; i < len(parts)/2; i++ {

		encoded, err := strconv.ParseInt(string(parts[2*i+1])+string(parts[2*i]), 16, 64)
		if err != nil {
			return nil, err
		}

		//fmt.Printf("%x: %x \n", (i*4)+0x240, encoded)

		// Last instructions can be 0x0.
		if encoded == 0 {
			break
		}

		instruction, err := parseInstruction(uint32(encoded))
		if err != nil {
			return nil, fmt.Errorf("instruction %x: %x %s", (i*4)+0x240, encoded, err.Error())
		}

		instructions = append(instructions, Instruction{instruction, uint32(encoded)})
	}

	return instructions, nil
}
