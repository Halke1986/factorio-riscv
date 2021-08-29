package embench

import (
	"fmt"
	"path/filepath"

	"github.com/magefile/mage/sh"
)

const workDir = "./programs/embench-iot"

// Build build selected benchmark
func Build(suite string) error {
	srcDir := fmt.Sprintf("%s/src/%s/", workDir, suite)
	sources, err := filepath.Glob(srcDir + "*.c")
	if err != nil {
		return err
	}

	return sh.RunWithV(
		map[string]string{
			"WORK_DIR": workDir,
			"SUITE":    suite,
		},
		"riscv64-unknown-elf-gcc",
		append([]string{
			"-I${WORK_DIR}/src/${SUITE}",
			"-I${WORK_DIR}/support",
			"-I${WORK_DIR}/board",
			"${WORK_DIR}/support/beebsc.c",
			"${WORK_DIR}/support/main.c",
			"${WORK_DIR}/support/board.c",
			"${WORK_DIR}/board/crt.S",
			"-DCPU_MHZ=1",
			"-DWARMUP_HEAT=0",
			"-lgcc",
			"-lm",
			"-ffreestanding",
			"-nostartfiles",
			"-march=rv32i",
			"-mabi=ilp32",
			"-O2",
			"-T${WORK_DIR}/board/link.ld",
			//"-L/home/mwojcik/riscv/riscv64-unknown-elf-gcc-8.3.0-2020.04.0-x86_64-linux-ubuntu14/lib/gcc/riscv64-unknown-elf/8.3.0/rv32i/ilp32",
			"-oelf"},
			sources...)...,
	)
}

//embench-huffbench-host:
//	gcc\
//	-I$(WORK_DIR)/src/huffbench\
//	-I$(WORK_DIR)/support\
//	-I$(WORK_DIR)/board\
//	$(WORK_DIR)/src/huffbench/libhuffbench.c\
//	$(WORK_DIR)/support/beebsc.c\
//	$(WORK_DIR)/support/main.c\
//	$(WORK_DIR)/support/board.c\
//	-D CPU_MHZ = 1\
//	-D WARMUP_HEAT = 0\
//	-o embench-huffbench-host
