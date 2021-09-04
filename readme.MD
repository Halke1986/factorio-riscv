# Factorio RISC V implementation

## ISA

- The CPU implements `RV32I ISA version 2.1` in accordance with `The RISC-V Instruction Set Manual version 20191213`.
- Traps and exceptions are not implemented.
- `FENCE`, `ECALL` and `EBREAK` instructions are not implemented. Calling them results in program abort.

## Environment

- Code needs to start at address `0x4000000`.
- After end of execution program needs to jump to address `0x8000000`.
- Data needs to start at address `0x0`.
- Both code and data are bootloaded into ROM and RAM respectively with script-generated const combinator ROMs.

## Running a program

- Build a program. E.g. to build one of the embench-iot suites run `mage embench:build huffbench`.
- Build the bootloader `mage bootloader`.
- Copy contents of `bootloader.lua` file to Factorio console, place the cursor over a const combinator and run the
  script.
- Copy the generated ROMs to bootloader section of the CPU.
- Press `RESET` pushbutton.
- Press `RUN` pushbutton. 