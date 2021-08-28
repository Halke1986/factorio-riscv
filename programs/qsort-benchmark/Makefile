bench-qsort: src_dir = programs/qsort-benchmark
bench-qsort:
	riscv64-unknown-elf-gcc\
    -I$(src_dir)/env\
    -I$(src_dir)/common\
    -I$(src_dir)/qsort\
    -o elf\
    $(src_dir)/qsort/qsort_main.c\
    $(src_dir)/common/crt.S\
    -lgcc\
    -nostdlib\
    -ffreestanding\
    -march=rv32i\
    -mabi=ilp32\
    -Os\
    -T$(src_dir)/env/link.ld

bench-qsort-host: src_dir = programs/qsort-benchmark
bench-qsort-host:
	gcc\
    -I$(src_dir)/env\
    -I$(src_dir)/common\
    -I$(src_dir)/qsort\
    $(src_dir)/qsort/qsort_main.c\
    -o qsort
	riscv64-unknown-elf-g++ -g $(src_dir)/src/addi-01.S -o elf -ffreestanding -nostdlib -march=rv32i -mabi=ilp32 -I $(src_dir)/env -T $(src_dir)/env/script.ld
