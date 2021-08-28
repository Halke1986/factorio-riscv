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
    -O2\
    -T$(src_dir)/env/link.ld

bench-qsort-host: src_dir = programs/qsort-benchmark
bench-qsort-host:
	gcc\
    -I$(src_dir)/env\
    -I$(src_dir)/common\
    -I$(src_dir)/qsort\
    $(src_dir)/qsort/qsort_main.c\
    -o qsort
