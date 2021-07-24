# Compile
#riscv64-unknown-elf-g++ -g tests/addi-01.S -o elf -ffreestanding -nostdlib --entry main -march=rv32i -mabi=ilp32 -I tests/env -T tests/env/script.ld

# Print disassembly
riscv64-linux-gnu-objdump -d elf -t

# Print bytecode
#riscv64-linux-gnu-objcopy -O binary -j .text elf text
#riscv64-linux-gnu-objcopy -O binary -j .data elf data
#od -An --width=4 -x text
#od -An -v --width=4 -x data

# Update bootloader
#riscv64-linux-gnu-objdump -d elf
#riscv64-linux-gnu-objcopy -O binary -j .text elf text
#instructions=$(od -An -x text | ./recompile/recompile)
#sed <bootloader-template -e "s/###/$instructions/g" >bootloader.lua

# Print custom disassembly
#riscv64-linux-gnu-objcopy -O binary -j .text elf text
#od -An -x text | ./recompile/recompile
#od -An -x text | ./recompile/recompile > out.txt
