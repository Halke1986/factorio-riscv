package bootloader

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
