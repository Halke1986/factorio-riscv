SRC_DIR := ./programs/embench-iot

.PHONY: embench-huffbench
.PHONY: embench-huffbench-host

embench-huffbench:
	riscv64-unknown-elf-gcc\
    -I$(SRC_DIR)/src/huffbench\
    -I$(SRC_DIR)/support\
    -I$(SRC_DIR)/board\
    $(SRC_DIR)/src/huffbench/libhuffbench.c\
    $(SRC_DIR)/support/beebsc.c\
    $(SRC_DIR)/support/main.c\
    $(SRC_DIR)/support/board.c\
    $(SRC_DIR)/board/crt.S\
    -D CPU_MHZ=1\
    -D WARMUP_HEAT=0\
    -lgcc\
    -ffreestanding\
    -nostartfiles\
    -march=rv32i\
    -mabi=ilp32\
    -O2\
    -T$(SRC_DIR)/board/link.ld\
    -o elf

embench-huffbench-host:
	gcc\
    -I$(SRC_DIR)/src/huffbench\
    -I$(SRC_DIR)/support\
    -I$(SRC_DIR)/board\
    $(SRC_DIR)/src/huffbench/libhuffbench.c\
    $(SRC_DIR)/support/beebsc.c\
    $(SRC_DIR)/support/main.c\
    $(SRC_DIR)/support/board.c\
    -D CPU_MHZ=1\
    -D WARMUP_HEAT=0\
    -o embench-huffbench-host
