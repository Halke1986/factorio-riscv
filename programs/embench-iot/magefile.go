package embench

import (
	"fmt"
	"path/filepath"
	"riscv/tools/bootloader"
	bld "riscv/tools/build-scripts"
)

const workDir = "./programs/embench-iot/"

// Build builds the selected benchmark suite
func Build(suite string) error {
	// List all suite sources.
	srcDir := fmt.Sprintf(workDir+"src/%s/", suite)
	sources, err := filepath.Glob(srcDir + "*.c")
	if err != nil {
		return err
	}

	// List all required support sources.
	sources = bld.AppendStrings(sources,
		workDir+"support/beebsc.c",
		workDir+"support/main.c",
		workDir+"support/board.c",
		"env/crt.S",
	)

	if err := bld.Default(bld.Args{
		Sources: sources,
		IncludeDirs: []string{
			workDir + "src/" + suite,
			workDir + "support",
			workDir + "board",
		},
		Macros: []string{
			"CPU_MHZ=1",
			"WARMUP_HEAT=0",
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
