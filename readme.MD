# Factorio RISC V implementation

![CPU](riscv.png)

## CPU

- The CPU implements `RV32IM ISA version 2.1` in accordance with `The RISC-V Instruction Set Manual version 20191213`.
- Traps and exceptions are not implemented.
- `FENCE`, `ECALL` and `EBREAK` instructions are not implemented. Calling them results in program abort.
- There is no input or output. At the current stage of development the CPU is designed to run benchmarks and ISA
  verification suites.
- RAM and code ROM are 16kB, but can be easily extended.
- The CPU blueprint found in `blueprints/cpu.txt` is preloaded with `nettle-sha256` benchmark from
  the [embench-iot](https://github.com/embench/embench-iot) suite. To run it, build the CPU in Factorio, press `RESET` (
  pushbuttons with red lamps) and `RUN` (pushbuttons with green lamps). The program should execute 8670 instructions in
  24219 ticks.

## Factorio version and mods required

The CPU is being developed in Factorio 1.1.39.

The logic part of the CPU is completely vanilla, but there are some QOL mods used.

- [EditorExtensions](https://mods.factorio.com/mod/EditorExtensions) for simplifying power supply.
- [Magic Lamp](https://mods.factorio.com/mod/magic-lamp) for displaying values. This mod is not necessary for the CPU
  operation.
- [Pushbutton](https://mods.factorio.com/mod/pushbutton) for `RESET` and `RUN` input.

## Building and running a program from this repository

The repository contains a copy of [riscv-arch-test](https://github.com/riscv-non-isa/riscv-arch-test) ISA verification
programs and [embench-iot](https://github.com/embench/embench-iot) benchmarks with build scripts and environment setup
customized for the Factorio RISCV CPU. To run them:

- Install [GNU toolchain for RISC-V](https://github.com/riscv-collab/riscv-gnu-toolchain)
- Install [mage](https://github.com/magefile/mage), a make-like tool based on Go.
- Build the program. To build one of the embench-iot suites, run `mage embench:build _suite_`, where `_suite_` is name
  of the selected suite, eg. `huffbench`. To build one of the compliance tests, run `mage compliance:build _inst_`,
  where `_inst_` is name of teh instruction to test, eg. `addi`.
- When running compliance test, add the circuit in `blueprints/compliance-tests-addon.txt` to the CPU. It's used to
  compare the results of the test run to an expected reference.
- Copy contents of `bootloader.lua` file to Factorio console, place the cursor over the wooden box on top of the ROM
  section and run the script. If selected program requires more than 16kB of code ROM, extend the ROM section by in-game
  copy tool and then run the script again.
- Press `RESET` pushbutton.
- Press `RUN` pushbutton.

## Building a program from scratch

TODO

## CPU verification

- Each implemented instruction was verified with a test
  from [riscv-arch-test](https://github.com/riscv-non-isa/riscv-arch-test).
- Benchmark suites from [embench-iot](https://github.com/embench/embench-iot) were successfully completed (`md5sum`
  was excluded, as it fails even on desktop environment and contains library calls like `printf` and `calloc`).

## CPU Performance

Performance was measured using `embench-iot` suite. Each benchmark was modified to run a single iteration to limit the
run time. Benchamrks were compiled with `riscv64-unknown-elf-gcc (GCC) 11.1.0`.

The CPU required 3.2 ticks for instruction on average.

|Benchmark suite|Instructions|Ticks       |Ticks/Inst|
|---------------|------------|------------|----------|
|picojpeg       |3839248     |11544344    |3.007     |
|nbody          |3226652     |9046915     |2.804     | 
|primecount     |2112259     |7106643     |3.364     | 
|wikisort       |1269454     |4161610     |3.278     | 
|cubic          |788628      |2368798     |3.004     | 
|qrduino        |568211      |1745094     |3.071     | 
|st             |307495      |918027      |2.985     | 
|huffbench      |225478      |708031      |3.14      |
|sglib-combined |94208       |315711      |3.351     | 
|matmult-int    |80268       |254568      |3.171     | 
|nettle-aes     |61006       |171435      |2.81      | 
|edn            |43266       |147979      |3.42      |
|slre           |23322       |80686       |3.46      | 
|crc32          |22608       |59753       |2.643     | 
|tarfind        |21684       |59905       |2.763     | 
|minver         |11764       |36859       |3.133     | 
|aha-mont64     |10846       |27425       |2.528     | 
|nettle-sha256  |8670        |24219       |2.793     | 
|ud             |2596        |7961        |3.065     | 
|nsichneu       |1942        |10361       |5.332     | 
|statemate      |1094        |4527        |4.134     |