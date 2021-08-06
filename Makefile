.PHONY: compiler
compiler: # build the elf to Factorio bytecode compiler
	cd ./compiler && go build && cd ..

bootloader:
	@ ./compiler/compiler elf bytecode
	@ cp bootloader-template.lua bootloader.lua
	@ sed -i -e '/local byte_code = {/r bytecode' bootloader.lua

disassembly: # print disassembly of elf file
	riscv64-linux-gnu-objdump -d elf -t

compliance-test: src_dir = programs/compliance-tests
compliance-test: # compile the selected compliance test
	riscv64-unknown-elf-g++ -g $(src_dir)/src/and-01.S -o elf -ffreestanding -nostdlib -march=rv32i -mabi=ilp32 -I $(src_dir)/env -T $(src_dir)/env/script.ld