.PHONY: compiler
compiler: # build the elf to Factorio bytecode compiler
	cd ./compiler && go build && cd ..

bootloader:
	@ ./compiler/compiler elf bytecode
	@ cp bootloader-template.lua bootloader.lua
	@ sed -i -e '/local byte_code = {/r bytecode' bootloader.lua

disassembly: # print disassembly of the elf file .text section
	riscv64-linux-gnu-objdump -d elf -t

print-data: # print hex dump of the elf file .data section
	riscv64-linux-gnu-objdump -s -j .data elf

compliance-test: src_dir = programs/compliance-tests
compliance-test: # compile the selected compliance test
	riscv64-unknown-elf-g++ -g $(src_dir)/src/addi-01.S -o elf -ffreestanding -nostdlib -march=rv32i -mabi=ilp32 -I $(src_dir)/env -T $(src_dir)/env/script.ld

bench-qsort: src_dir = programs/benchmarks
bench-qsort:
	riscv64-unknown-elf-gcc\
    -I$(src_dir)/env\
    -I$(src_dir)/common\
    -I$(src_dir)/qsort\
    -o elf\
    $(src_dir)/qsort/qsort_main.c\
    -lgcc\
    -nostdlib\
    -ffreestanding\
    -march=rv32i\
    -mabi=ilp32\
    -T$(src_dir)/env/link.ld

bench-qsort-host: src_dir = programs/benchmarks
bench-qsort-host:
	gcc\
    -I$(src_dir)/env\
    -I$(src_dir)/common\
    -I$(src_dir)/qsort\
    $(src_dir)/qsort/qsort_main.c\
    -o qsort
	riscv64-unknown-elf-g++ -g $(src_dir)/src/and-01.S -o elf -ffreestanding -nostdlib -march=rv32i -mabi=ilp32 -I $(src_dir)/env -T $(src_dir)/env/script.ld