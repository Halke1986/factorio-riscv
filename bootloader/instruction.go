package bootloader

import "errors"

type instructionType struct {
	name string

	mask   uint32
	opcode uint32
	funct3 uint32
	funct7 uint32

	implemented bool
}

const (
	funct3Shift = 12
	funct7Shift = 25

	opcodeMask = 0b1111111
	funct3Mask = 0b111 << funct3Shift
	funct7Mask = 0b1111111 << funct7Shift

	bTypeOpcodeMask      = opcodeMask | funct3Mask
	iTypeOpcodeMask      = opcodeMask | funct3Mask
	jTypeOpcodeMask      = opcodeMask
	rTypeOpcodeMask      = opcodeMask | funct3Mask | funct7Mask
	sTypeOpcodeMask      = opcodeMask | funct3Mask
	uTypeOpcodeMask      = opcodeMask
	systemTypeOpcodeMask = opcodeMask | funct3Mask
)

var instructionTable = []instructionType{
	// B-type instructions
	{
		name:        "BEQ",
		mask:        bTypeOpcodeMask,
		opcode:      0b1100011,
		funct3:      0b0,
		implemented: true,
	},
	{
		name:        "BNE",
		mask:        bTypeOpcodeMask,
		opcode:      0b1100011,
		funct3:      0b1,
		implemented: true,
	},
	{
		name:        "BLT",
		mask:        bTypeOpcodeMask,
		opcode:      0b1100011,
		funct3:      0b100,
		implemented: true,
	},
	{
		name:        "BGE",
		mask:        bTypeOpcodeMask,
		opcode:      0b1100011,
		funct3:      0b101,
		implemented: true,
	},
	{
		name:        "BLTU",
		mask:        bTypeOpcodeMask,
		opcode:      0b1100011,
		funct3:      0b110,
		implemented: true,
	},
	{
		name:        "BGEU",
		mask:        bTypeOpcodeMask,
		opcode:      0b1100011,
		funct3:      0b111,
		implemented: true,
	},

	// I-type instructions
	{
		name:        "JALR",
		mask:        iTypeOpcodeMask,
		opcode:      0b1100111,
		funct3:      0b0,
		implemented: true,
	},
	{
		name:        "LB",
		mask:        iTypeOpcodeMask,
		opcode:      0b11,
		funct3:      0b0,
		implemented: true,
	},
	{
		name:        "LH",
		mask:        iTypeOpcodeMask,
		opcode:      0b11,
		funct3:      0b1,
		implemented: true,
	},
	{
		name:        "LW",
		mask:        iTypeOpcodeMask,
		opcode:      0b11,
		funct3:      0b10,
		implemented: true,
	},
	{
		name:        "LBU",
		mask:        iTypeOpcodeMask,
		opcode:      0b11,
		funct3:      0b100,
		implemented: true,
	},
	{
		name:        "LHU",
		mask:        iTypeOpcodeMask,
		opcode:      0b11,
		funct3:      0b101,
		implemented: true,
	},
	{
		name:        "ADDI",
		mask:        iTypeOpcodeMask,
		opcode:      0b10011,
		funct3:      0b0,
		implemented: true,
	},
	{
		name:        "SLTI",
		mask:        iTypeOpcodeMask,
		opcode:      0b10011,
		funct3:      0b10,
		implemented: true,
	},
	{
		name:        "SLTIU",
		mask:        iTypeOpcodeMask,
		opcode:      0b10011,
		funct3:      0b11,
		implemented: true,
	},
	{
		name:        "XORI",
		mask:        iTypeOpcodeMask,
		opcode:      0b10011,
		funct3:      0b100,
		implemented: true,
	},
	{
		name:        "ORI",
		mask:        iTypeOpcodeMask,
		opcode:      0b10011,
		funct3:      0b110,
		implemented: true,
	},
	{
		name:        "ANDI",
		mask:        iTypeOpcodeMask,
		opcode:      0b10011,
		funct3:      0b111,
		implemented: true,
	},

	// J-type instructions
	{
		name:        "JAL",
		mask:        jTypeOpcodeMask,
		opcode:      0b1101111,
		implemented: true,
	},

	// R-type instructions
	{
		name:        "SLLI",
		mask:        rTypeOpcodeMask,
		opcode:      0b10011,
		funct3:      0b1,
		funct7:      0b0,
		implemented: true,
	},
	{
		name:        "SRLI",
		mask:        rTypeOpcodeMask,
		opcode:      0b10011,
		funct3:      0b101,
		funct7:      0b0,
		implemented: true,
	},
	{
		name:        "SRAI",
		mask:        rTypeOpcodeMask,
		opcode:      0b10011,
		funct3:      0b101,
		funct7:      0b100000,
		implemented: true,
	},
	{
		name:        "ADD",
		mask:        rTypeOpcodeMask,
		opcode:      0b110011,
		funct3:      0b0,
		funct7:      0b0,
		implemented: true,
	},
	{
		name:        "SUB",
		mask:        rTypeOpcodeMask,
		opcode:      0b110011,
		funct3:      0b0,
		funct7:      0b100000,
		implemented: true,
	},
	{
		name:        "SLL",
		mask:        rTypeOpcodeMask,
		opcode:      0b110011,
		funct3:      0b1,
		funct7:      0b0,
		implemented: true,
	},
	{
		name:        "SLT",
		mask:        rTypeOpcodeMask,
		opcode:      0b110011,
		funct3:      0b10,
		funct7:      0b0,
		implemented: true,
	},
	{
		name:        "SLTU",
		mask:        rTypeOpcodeMask,
		opcode:      0b110011,
		funct3:      0b11,
		funct7:      0b0,
		implemented: true,
	},
	{
		name:        "XOR",
		mask:        rTypeOpcodeMask,
		opcode:      0b110011,
		funct3:      0b100,
		funct7:      0b0,
		implemented: true,
	},
	{
		name:        "SRL",
		mask:        rTypeOpcodeMask,
		opcode:      0b110011,
		funct3:      0b101,
		funct7:      0b0,
		implemented: true,
	},
	{
		name:        "SRA",
		mask:        rTypeOpcodeMask,
		opcode:      0b110011,
		funct3:      0b101,
		funct7:      0b100000,
		implemented: true,
	},
	{
		name:        "OR",
		mask:        rTypeOpcodeMask,
		opcode:      0b110011,
		funct3:      0b110,
		funct7:      0b0,
		implemented: true,
	},
	{
		name:        "AND",
		mask:        rTypeOpcodeMask,
		opcode:      0b110011,
		funct3:      0b111,
		funct7:      0b0,
		implemented: true,
	},

	// S-type instructions
	{
		name:        "SB",
		mask:        sTypeOpcodeMask,
		opcode:      0b100011,
		funct3:      0b0,
		implemented: true,
	},
	{
		name:        "SH",
		mask:        sTypeOpcodeMask,
		opcode:      0b100011,
		funct3:      0b1,
		implemented: true,
	},
	{
		name:        "SW",
		mask:        sTypeOpcodeMask,
		opcode:      0b100011,
		funct3:      0b10,
		implemented: true,
	},

	// U-type instructions
	{
		name:        "LUI",
		mask:        uTypeOpcodeMask,
		opcode:      0b110111,
		implemented: true,
	},
	{
		name:        "AUIPC",
		mask:        uTypeOpcodeMask,
		opcode:      0b10111,
		implemented: true,
	},

	// SYSTEM instructions
	{
		name:        "FENCE",
		mask:        systemTypeOpcodeMask,
		opcode:      0b1111,
		funct3:      0b0,
		implemented: false,
	},
	{
		name:        "FENCE.I",
		mask:        systemTypeOpcodeMask,
		opcode:      0b1111,
		funct3:      0b1,
		implemented: false,
	},
	{
		name:        "ECALL/EBREAK",
		mask:        systemTypeOpcodeMask,
		opcode:      0b1110011,
		funct3:      0b0,
		implemented: false,
	},
	{
		name:        "CSRRW",
		mask:        systemTypeOpcodeMask,
		opcode:      0b1110011,
		funct3:      0b1,
		implemented: false,
	},
	{
		name:        "CSRRS",
		mask:        systemTypeOpcodeMask,
		opcode:      0b1110011,
		funct3:      0b10,
		implemented: false,
	},
	{
		name:        "CSRRC",
		mask:        systemTypeOpcodeMask,
		opcode:      0b1110011,
		funct3:      0b11,
		implemented: false,
	},
	{
		name:        "CSRRWI",
		mask:        systemTypeOpcodeMask,
		opcode:      0b1110011,
		funct3:      0b101,
		implemented: false,
	},
	{
		name:        "CSRRSI",
		mask:        systemTypeOpcodeMask,
		opcode:      0b1110011,
		funct3:      0b110,
		implemented: false,
	},
	{
		name:        "CSRRCI",
		mask:        systemTypeOpcodeMask,
		opcode:      0b1110011,
		funct3:      0b111,
		implemented: false,
	},
}

func parseInstruction(encoded uint32) (instructionType, error) {
	for _, i := range instructionTable {
		pattern := i.opcode | (i.funct3 << funct3Shift) | (i.funct7 << funct7Shift)
		if encoded&i.mask == pattern {
			return i, nil
		}
	}

	return instructionType{}, errors.New("unknown instruction")
}
