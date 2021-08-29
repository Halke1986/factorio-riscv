.PHONY: compiler
compiler: # build the elf to Factorio bytecode compiler
	cd ./compiler && go build && cd ..

bootloader:
	@ ./compiler/compiler elf text data
	@ cp bootloader-template.lua bootloader.lua
	@ sed -i -e '/local text = {/r text' bootloader.lua
	@ sed -i -e '/local data = {/r data' bootloader.lua

disassembly: # print disassembly of the elf file .text section
	riscv64-linux-gnu-objdump -d elf -t

print-data: # print hex dump of the elf file .data section
	riscv64-linux-gnu-objdump -s -j .rodata elf

compliance-test: src_dir = programs/compliance-tests
compliance-test: # compile the selected compliance test
	riscv64-unknown-elf-g++ -g $(src_dir)/src/sra-01.S -o elf -ffreestanding -nostdlib -march=rv32i -mabi=ilp32 -I $(src_dir)/env -T $(src_dir)/env/script.ld

include programs/qsort-benchmark/Makefile
include programs/embench-iot/Makefile
