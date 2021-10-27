package coremark

import (
	"riscv/tools/bootloader"
	bld "riscv/tools/build-scripts"

	"github.com/magefile/mage/sh"
)

const workDir = "./programs/coremark/"

// BuildHost builds the coremark binary for execution on host
func BuildHost() error {
	return sh.RunV(
		"gcc",

		workDir+"src/core_list_join.c",
		workDir+"src/core_main.c",
		workDir+"src/core_matrix.c",
		workDir+"src/core_state.c",
		workDir+"src/core_util.c",
		workDir+"posix/core_portme.c",
		workDir+"posix/core_portme_posix_overrides.c",
		"env/printf/printf.c",

		"-I", workDir+"posix/",
		"-I", workDir+"src/",
		"-I", "env/printf/",

		"-DCOMPILER_FLAGS=\"-O2\"",
		"-DMEM_LOCATION=\"Data and code in RAM\"",
		"-DMAIN_HAS_NOARGC=1",
		"-DSEED_METHOD=SEED_VOLATILE",
		"-DVALIDATION_RUN=1",
		"-DITERATIONS=1",
		"-DREBUILD=1",
		"-O2",

		"-o", "coremark.run",
	)
}

// Build builds coremark benchmark
func Build() error {
	if err := bld.Default(bld.Args{
		Sources: []string{
			workDir + "src/core_list_join.c",
			workDir + "src/core_main.c",
			workDir + "src/core_matrix.c",
			workDir + "src/core_state.c",
			workDir + "src/core_util.c",

			workDir + "board/core_portme.c",
			"env/printf/printf.c",
			"env/printf/putchar.c",
			"env/crt.S",
		},
		IncludeDirs: []string{
			workDir + "src/",
			workDir + "board/",
			"env/",
			"env/printf",
		},
		Macros: []string{
			"COMPILER_FLAGS=\"-O2\"",
			"CLOCKS_PER_SEC=60",
			"MEM_LOCATION = \"Data and code in ROM\"",

			"MAIN_HAS_NOARGC=1",
			"SEED_METHOD=SEED_VOLATILE",
			"VALIDATION_RUN=1",
			"ITERATIONS=1",
			"REBUILD=1",
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
