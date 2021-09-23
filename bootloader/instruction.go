package bootloader

import "errors"

type instruction struct {
	Name string
	Type int

	pattern uint32
}

const (
	funct3Shift = 12
	funct7Shift = 25

	opcodeMask = 0b1111111
	funct3Mask = 0b111 << funct3Shift
	funct7Mask = 0b1111111 << funct7Shift
)

const (
	TypeB = iota
	TypeI
	TypeJ
	TypeR
	TypeS
	TypeU
	TypeSystem
)

var unimplemented = map[string]bool{
	"FENCE":        true,
	"ECALL/EBREAK": true,
}

var instructionTable = []instruction{
	// B-type instructions
	{
		Name:    "BEQ",
		Type:    TypeB,
		pattern: funct3(0b0) | opcode(0b1100011),
	},
	{
		Name:    "BNE",
		Type:    TypeB,
		pattern: funct3(0b1) | opcode(0b1100011),
	},
	{
		Name:    "BLT",
		Type:    TypeB,
		pattern: funct3(0b100) | opcode(0b1100011),
	},
	{
		Name:    "BGE",
		Type:    TypeB,
		pattern: funct3(0b101) | opcode(0b1100011),
	},
	{
		Name:    "BLTU",
		Type:    TypeB,
		pattern: funct3(0b110) | opcode(0b1100011),
	},
	{
		Name:    "BGEU",
		Type:    TypeB,
		pattern: funct3(0b111) | opcode(0b1100011),
	},

	// Name-type instructions
	{
		Name:    "JALR",
		Type:    TypeI,
		pattern: funct3(0b0) | opcode(0b1100111),
	},
	{
		Name:    "LB",
		Type:    TypeI,
		pattern: funct3(0b0) | opcode(0b11),
	},
	{
		Name:    "LH",
		Type:    TypeI,
		pattern: funct3(0b1) | opcode(0b11),
	},
	{
		Name:    "LW",
		Type:    TypeI,
		pattern: funct3(0b10) | opcode(0b11),
	},
	{
		Name:    "LBU",
		Type:    TypeI,
		pattern: funct3(0b100) | opcode(0b11),
	},
	{
		Name:    "LHU",
		Type:    TypeI,
		pattern: funct3(0b101) | opcode(0b11),
	},
	{
		Name:    "ADDI",
		Type:    TypeI,
		pattern: funct3(0b0) | opcode(0b10011),
	},
	{
		Name:    "SLTI",
		Type:    TypeI,
		pattern: funct3(0b10) | opcode(0b10011),
	},
	{
		Name:    "SLTIU",
		Type:    TypeI,
		pattern: funct3(0b11) | opcode(0b10011),
	},
	{
		Name:    "XORI",
		Type:    TypeI,
		pattern: funct3(0b100) | opcode(0b10011),
	},
	{
		Name:    "ORI",
		Type:    TypeI,
		pattern: funct3(0b110) | opcode(0b10011),
	},
	{
		Name:    "ANDI",
		Type:    TypeI,
		pattern: funct3(0b111) | opcode(0b10011),
	},

	// J-type instructions
	{
		Name:    "JAL",
		Type:    TypeJ,
		pattern: opcode(0b1101111),
	},

	// R-type instructions
	{
		Name:    "SLLI",
		Type:    TypeR,
		pattern: funct7(0b0) | funct3(0b1) | opcode(0b10011),
	},
	{
		Name:    "SRLI",
		Type:    TypeR,
		pattern: funct7(0b0) | funct3(0b101) | opcode(0b10011),
	},
	{
		Name:    "SRAI",
		Type:    TypeR,
		pattern: funct7(0b100000) | funct3(0b101) | opcode(0b10011),
	},
	{
		Name:    "ADD",
		Type:    TypeR,
		pattern: funct7(0b0) | funct3(0b0) | opcode(0b110011),
	},
	{
		Name:    "SUB",
		Type:    TypeR,
		pattern: funct7(0b100000) | funct3(0b0) | opcode(0b110011),
	},
	{
		Name:    "SLL",
		Type:    TypeR,
		pattern: funct7(0b0) | funct3(0b1) | opcode(0b110011),
	},
	{
		Name:    "SLT",
		Type:    TypeR,
		pattern: funct7(0b0) | funct3(0b10) | opcode(0b110011),
	},
	{
		Name:    "SLTU",
		Type:    TypeR,
		pattern: funct7(0b0) | funct3(0b11) | opcode(0b110011),
	},
	{
		Name:    "XOR",
		Type:    TypeR,
		pattern: funct7(0b0) | funct3(0b100) | opcode(0b110011),
	},
	{
		Name:    "SRL",
		Type:    TypeR,
		pattern: funct7(0b0) | funct3(0b101) | opcode(0b110011),
	},
	{
		Name:    "SRA",
		Type:    TypeR,
		pattern: funct7(0b100000) | funct3(0b101) | opcode(0b110011),
	},
	{
		Name:    "OR",
		Type:    TypeR,
		pattern: funct7(0b0) | funct3(0b110) | opcode(0b110011),
	},
	{
		Name:    "AND",
		Type:    TypeR,
		pattern: funct7(0b0) | funct3(0b111) | opcode(0b110011),
	},

	// S-type instructions
	{
		Name:    "SB",
		Type:    TypeS,
		pattern: funct3(0b0) | opcode(0b100011),
	},
	{
		Name:    "SH",
		Type:    TypeS,
		pattern: funct3(0b1) | opcode(0b100011),
	},
	{
		Name:    "SW",
		Type:    TypeS,
		pattern: funct3(0b10) | opcode(0b100011),
	},

	// U-type instructions
	{
		Name:    "LUI",
		Type:    TypeU,
		pattern: opcode(0b110111),
	},
	{
		Name:    "AUIPC",
		Type:    TypeU,
		pattern: opcode(0b10111),
	},

	// SYSTEM instructions
	{
		Name:    "FENCE",
		Type:    TypeSystem,
		pattern: funct3(0b0) | opcode(0b1111),
	},
	{
		Name:    "ECALL/EBREAK",
		Type:    TypeSystem,
		pattern: funct3(0b0) | opcode(0b1110011),
	},

	// M extension instructions
	{
		Name:    "MUL",
		Type:    TypeR,
		pattern: funct7(0b1) | funct3(0b0) | opcode(0b110011),
	},
	{
		Name:    "MULH",
		Type:    TypeR,
		pattern: funct7(0b1) | funct3(0b1) | opcode(0b110011),
	},
	{
		Name:    "MULHSU",
		Type:    TypeR,
		pattern: funct7(0b1) | funct3(0b10) | opcode(0b110011),
	},
	{
		Name:    "MULHU",
		Type:    TypeR,
		pattern: funct7(0b1) | funct3(0b11) | opcode(0b110011),
	},
	{
		Name:    "DIV",
		Type:    TypeR,
		pattern: funct7(0b1) | funct3(0b100) | opcode(0b110011),
	},
	{
		Name:    "DIVU",
		Type:    TypeR,
		pattern: funct7(0b1) | funct3(0b101) | opcode(0b110011),
	},
	{
		Name:    "REM",
		Type:    TypeR,
		pattern: funct7(0b1) | funct3(0b110) | opcode(0b110011),
	},
	{
		Name:    "REMU",
		Type:    TypeR,
		pattern: funct7(0b1) | funct3(0b111) | opcode(0b110011),
	},
}

func matchInstruction(encoded uint32) (instruction, error) {
	for _, i := range instructionTable {
		if encoded&patterMask(i.Type) == i.pattern {
			return i, nil
		}
	}

	return instruction{}, errors.New("unknown instruction")
}

func opcode(o uint32) uint32 {
	return o
}

func funct3(f uint32) uint32 {
	return f << funct3Shift
}

func funct7(f uint32) uint32 {
	return f << funct7Shift
}

func patterMask(typ int) uint32 {
	switch typ {
	case TypeB:
		return opcodeMask | funct3Mask
	case TypeI:
		return opcodeMask | funct3Mask
	case TypeJ:
		return opcodeMask
	case TypeR:
		return opcodeMask | funct3Mask | funct7Mask
	case TypeS:
		return opcodeMask | funct3Mask
	case TypeU:
		return opcodeMask
	case TypeSystem:
		return opcodeMask | funct3Mask
	default:
		return 0
	}
}
