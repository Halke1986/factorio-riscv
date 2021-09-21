# Factorio RISC V implementation

![CPU](riscv.png)

## CPU

- The CPU implements `RV32IM ISA version 2.1` in accordance with `The RISC-V Instruction Set Manual version 20191213`.
- Traps and exceptions are not implemented.
- `FENCE`, `ECALL` and `EBREAK` instructions are not implemented. Calling them results in program abort.
- There is no input or output. At the current stage of development the CPU is designed to run benchmarks and ISA
  verification suites.

## Factorio version and mods required

The CPU is being developed in Factorio 1.1.39.

The logic part of the CPU is completely vanilla, but there are some QOL mods used.

- [EditorExtensions](https://mods.factorio.com/mod/EditorExtensions) for simplifying power supply.
- [Magic Lamp](https://mods.factorio.com/mod/magic-lamp) for displaying values. This mod is not necessary for the CPU
  operation.
- [Pushbutton](https://mods.factorio.com/mod/pushbutton) for `RESET` and `RUN` input.

## Running a program

The CPU blueprint found in `blueprints/cpu.txt` is preloaded with `nettle-sha256` benchmark from
the [embench-iot](https://github.com/embench/embench-iot) suite. To run it, build the CPU in Factorio, press `RESET` (
pushbuttons with red lamps) and `RUN` (pushbuttons with green lamps). The program should execute 26567 instructions in
67746 ticks.

## Building and running a program from this repository

The repository contains a copy of [riscv-arch-test](https://github.com/riscv-non-isa/riscv-arch-test) ISA verification
programs and [embench-iot](https://github.com/embench/embench-iot) benchmarks with build scripts and environment setup
customized for the Factorio RISCV CPU. To run them:

- Install [GNU toolchain for RISC-V](https://github.com/riscv-collab/riscv-gnu-toolchain)
- Install [mage](https://github.com/magefile/mage), a make-like tool based on Go.
- Build the program. E.g. to build `huffbench`, one of the embench-iot suites, run `mage embench:build huffbench`.
- Copy contents of `bootloader.lua` file to Factorio console, place the cursor over a constant combinator and run the
  script.
- Copy the generated ROMs to bootloader section of the CPU.
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
run time.

The CPU required 3.2 ticks for instruction on average.

|Benchmark suite|Ticks       |Instructions|Ticks/Inst|
|---------------|------------|------------|----------|
|picojpeg       |3705329     |11242220    |3.034     |
|nbody          |3152613     |8865795     |2.812     | 
|primecount     |2112304     |7106855     |3.365     | 
|wikisort       |1236009     |4089093     |3.308     | 
|cubic          |775839      |2328054     |3.001     | 
|qrduino        |576416      |1764081     |3.06      | 
|st             |298514      |896873      |3.004     | 
|huffbench      |225303      |706141      |3.134     |
|sglib-combined |88812       |303314      |3.415     | 
|matmult-int    |80171       |254374      |3.173     | 
|nettle-aes     |61422       |172338      |2.806     | 
|edn            |43028       |147420      |3.426     |
|slre           |24771       |84823       |3.424     | 
|crc32          |22601       |59728       |2.643     | 
|tarfind        |21314       |58797       |2.759     | 
|minver         |11654       |37476       |3.216     | 
|aha-mont64     |10824       |27427       |2.534     | 
|nettle-sha256  |8674        |24293       |2.801     | 
|ud             |2562        |7902        |3.084     | 
|nsichneu       |1967        |10423       |5.299     | 
|statemate      |1121        |4655        |4.153     |