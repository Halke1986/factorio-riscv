package main

import "errors"

type InstructionType struct {
	Name string

	Mask   uint32
	Opcode uint32
	Funct3 uint32
	Funct7 uint32

	Implemented bool
}

const (
	Funct3Shift = 12
	Funct7Shift = 25

	OpcodeMask = 0b1111111
	Funct3Mask = 0b111 << Funct3Shift
	Funct7Mask = 0b1111111 << Funct7Shift

	BTypeOpcodeMask      = OpcodeMask | Funct3Mask
	ITypeOpcodeMask      = OpcodeMask | Funct3Mask
	JTypeOpcodeMask      = OpcodeMask
	RTypeOpcodeMask      = OpcodeMask | Funct3Mask | Funct7Mask
	STypeOpcodeMask      = OpcodeMask | Funct3Mask
	UTypeOpcodeMask      = OpcodeMask
	SystemTypeOpcodeMask = OpcodeMask | Funct3Mask
)

var InstructionTable = []InstructionType{
	// B-type instructions
	{
		Name:        "BEQ",
		Mask:        BTypeOpcodeMask,
		Opcode:      0b1100011,
		Funct3:      0b0,
		Implemented: true,
	},
	{
		Name:        "BNE",
		Mask:        BTypeOpcodeMask,
		Opcode:      0b1100011,
		Funct3:      0b1,
		Implemented: true,
	},
	{
		Name:        "BLT",
		Mask:        BTypeOpcodeMask,
		Opcode:      0b1100011,
		Funct3:      0b100,
		Implemented: true,
	},
	{
		Name:        "BGE",
		Mask:        BTypeOpcodeMask,
		Opcode:      0b1100011,
		Funct3:      0b101,
		Implemented: true,
	},
	{
		Name:        "BLTU",
		Mask:        BTypeOpcodeMask,
		Opcode:      0b1100011,
		Funct3:      0b110,
		Implemented: true,
	},
	{
		Name:        "BGEU",
		Mask:        BTypeOpcodeMask,
		Opcode:      0b1100011,
		Funct3:      0b111,
		Implemented: true,
	},

	// I-type instructions
	{
		Name:        "JALR",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b1100111,
		Funct3:      0b0,
		Implemented: true,
	},
	{
		Name:        "LB",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b11,
		Funct3:      0b0,
		Implemented: true,
	},
	{
		Name:        "LH",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b11,
		Funct3:      0b1,
		Implemented: true,
	},
	{
		Name:        "LW",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b11,
		Funct3:      0b10,
		Implemented: true,
	},
	{
		Name:        "LBU",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b11,
		Funct3:      0b100,
		Implemented: true,
	},
	{
		Name:        "LHU",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b11,
		Funct3:      0b101,
		Implemented: true,
	},
	{
		Name:        "ADDI",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b10011,
		Funct3:      0b0,
		Implemented: true,
	},
	{
		Name:        "SLTI",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b10011,
		Funct3:      0b10,
		Implemented: false,
	},
	{
		Name:        "SLTIU",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b10011,
		Funct3:      0b11,
		Implemented: false,
	},
	{
		Name:        "XORI",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b10011,
		Funct3:      0b100,
		Implemented: true,
	},
	{
		Name:        "ORI",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b10011,
		Funct3:      0b110,
		Implemented: false,
	},
	{
		Name:        "ANDI",
		Mask:        ITypeOpcodeMask,
		Opcode:      0b10011,
		Funct3:      0b111,
		Implemented: true,
	},

	// J-type instructions
	{
		Name:        "JAL",
		Mask:        JTypeOpcodeMask,
		Opcode:      0b1101111,
		Implemented: true,
	},

	// R-type instructions
	{
		Name:        "SLLI",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b10011,
		Funct3:      0b1,
		Funct7:      0b0,
		Implemented: false,
	},
	{
		Name:        "SRLI",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b10011,
		Funct3:      0b101,
		Funct7:      0b0,
		Implemented: false,
	},
	{
		Name:        "SRAI",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b10011,
		Funct3:      0b101,
		Funct7:      0b100000,
		Implemented: false,
	},
	{
		Name:        "ADD",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b110011,
		Funct3:      0b0,
		Funct7:      0b0,
		Implemented: true,
	},
	{
		Name:        "SUB",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b110011,
		Funct3:      0b0,
		Funct7:      0b100000,
		Implemented: true,
	},
	{
		Name:        "SLL",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b110011,
		Funct3:      0b1,
		Funct7:      0b0,
		Implemented: false,
	},
	{
		Name:        "SLT",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b110011,
		Funct3:      0b10,
		Funct7:      0b0,
		Implemented: false,
	},
	{
		Name:        "SLTU",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b110011,
		Funct3:      0b11,
		Funct7:      0b0,
		Implemented: false,
	},
	{
		Name:        "XOR",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b110011,
		Funct3:      0b100,
		Funct7:      0b0,
		Implemented: false,
	},
	{
		Name:        "SRL",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b110011,
		Funct3:      0b101,
		Funct7:      0b0,
		Implemented: false,
	},
	{
		Name:        "SRA",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b110011,
		Funct3:      0b101,
		Funct7:      0b100000,
		Implemented: false,
	},
	{
		Name:        "OR",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b110011,
		Funct3:      0b110,
		Funct7:      0b0,
		Implemented: false,
	},
	{
		Name:        "AND",
		Mask:        RTypeOpcodeMask,
		Opcode:      0b110011,
		Funct3:      0b111,
		Funct7:      0b0,
		Implemented: true,
	},

	// S-type instructions
	{
		Name:        "SB",
		Mask:        STypeOpcodeMask,
		Opcode:      0b100011,
		Funct3:      0b0,
		Implemented: true,
	},
	{
		Name:        "SH",
		Mask:        STypeOpcodeMask,
		Opcode:      0b100011,
		Funct3:      0b1,
		Implemented: true,
	},
	{
		Name:        "SW",
		Mask:        STypeOpcodeMask,
		Opcode:      0b100011,
		Funct3:      0b10,
		Implemented: true,
	},

	// U-type instructions
	{
		Name:        "LUI",
		Mask:        UTypeOpcodeMask,
		Opcode:      0b110111,
		Implemented: true,
	},
	{
		Name:        "AUIPC",
		Mask:        UTypeOpcodeMask,
		Opcode:      0b10111,
		Implemented: true,
	},

	// SYSTEM instructions
	{
		Name:        "FENCE",
		Mask:        SystemTypeOpcodeMask,
		Opcode:      0b1111,
		Funct3:      0b0,
		Implemented: false,
	},
	{
		Name:        "FENCE.I",
		Mask:        SystemTypeOpcodeMask,
		Opcode:      0b1111,
		Funct3:      0b1,
		Implemented: false,
	},
	{
		Name:        "ECALL/EBREAK",
		Mask:        SystemTypeOpcodeMask,
		Opcode:      0b1110011,
		Funct3:      0b0,
		Implemented: false,
	},
	{
		Name:        "CSRRW",
		Mask:        SystemTypeOpcodeMask,
		Opcode:      0b1110011,
		Funct3:      0b1,
		Implemented: false,
	},
	{
		Name:        "CSRRS",
		Mask:        SystemTypeOpcodeMask,
		Opcode:      0b1110011,
		Funct3:      0b10,
		Implemented: false,
	},
	{
		Name:        "CSRRC",
		Mask:        SystemTypeOpcodeMask,
		Opcode:      0b1110011,
		Funct3:      0b11,
		Implemented: false,
	},
	{
		Name:        "CSRRWI",
		Mask:        SystemTypeOpcodeMask,
		Opcode:      0b1110011,
		Funct3:      0b101,
		Implemented: false,
	},
	{
		Name:        "CSRRSI",
		Mask:        SystemTypeOpcodeMask,
		Opcode:      0b1110011,
		Funct3:      0b110,
		Implemented: false,
	},
	{
		Name:        "CSRRCI",
		Mask:        SystemTypeOpcodeMask,
		Opcode:      0b1110011,
		Funct3:      0b111,
		Implemented: false,
	},
}

func parseInstruction(encoded uint32) (InstructionType, error) {
	for _, i := range InstructionTable {
		pattern := i.Opcode | (i.Funct3 << Funct3Shift) | (i.Funct7 << Funct7Shift)
		if encoded&i.Mask == pattern {
			return i, nil
		}
	}

	return InstructionType{}, errors.New("unknown instruction")
}
