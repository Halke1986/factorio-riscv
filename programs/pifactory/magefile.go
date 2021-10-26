package pifactory

import (
	"riscv/tools/bootloader"
	bld "riscv/tools/build-scripts"
)

const workDir = "./programs/pifactory/"

// Build builds the pifactory program.
func Build() error {
	if err := bld.Default(bld.Args{
		Sources: []string{
			workDir + "src/pifactory.c",
			"env/crt.S",
		},
		Libraries: []string{
			"gcc",
			"m",
		},
		LinkerScript: "env/link.ld",
		Optimization: "O2",
	}); err != nil {
		return err
	}

	return bootloader.Make(bld.ElfPath, bld.BootloaderPath, nil)
}
