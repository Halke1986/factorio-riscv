# Factorio RISC V implementation

![CPU](riscv.png)

## CPU

- The CPU implements `RV32I ISA version 2.1` in accordance with `The RISC-V Instruction Set Manual version 20191213`.
- Traps and exceptions are not implemented.
- `FENCE`, `ECALL` and `EBREAK` instructions are not implemented. Calling them results in program abort.
- There is no input or output. At the current stage of development the CPU is designed to run benchmarks and ISA
  verification suites.

## Factorio version and mods required

The CPU is being developed in Factorio 1.1.27.

The logic part of the CPU is completely vanilla, but there are some QOL mods used.

- [EditorExtensions](https://mods.factorio.com/mod/EditorExtensions) for simplifying power supply.
- [Magic Lamp](https://mods.factorio.com/mod/magic-lamp) for displaying values. This mod can is not necessary for the
  CPU operation.
- [Pushbutton](https://mods.factorio.com/mod/pushbutton) for `reset` and `run` input.

## Running a program

The CPU blueprint found in `blueprints/cpu.txt` file is preloaded with `aha-mont64` benchmark
from [embench-iot](https://github.com/embench/embench-iot) suite. To run it, build the cpu, press `RESET` (pushbuttons
with red lamps) and `RUN` (pushbuttons with green lamps). The program executes 26567 instructions in 67746 ticks.

## Building and running a program from this repository

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

## CPU Performance (outdated, current implementation requires ~3 ticks per instruction)

- Benchmark suites from `embench-iot` were modified to run a single iteration to limit the run time.

|Benchmark suite|Ticks       |Instructions|Ticks/Inst|
|---------------|------------|------------|----------|
|nbody          |60864591    |13113296    |4.641     |
|primecount     |25256785    |5109583     |4.943     |
|picojpeg       |19888072    |4321841     |4.602     |
|wikisort       |14647531    |3064590     |4.78      |
|cubic          |12498103    |2692346     |4.642     |
|st             |5830378     |1251369     |4.659     |
|qrduino        |4881350     |1025041     |4.762     |
|edn            |4003593     |847449      |4.724     |
|matmult-int    |3274661     |688261      |4.758     |
|huffbench      |1120201     |225303      |4.972     |
|tarfind        |517446      |109507      |4.725     |
|sglib-combined |517269      |99990       |5.173     |
|nettle-aes     |302723      |65612       |4.614     |
|crc32          |145752      |33865       |4.304     |
|aha-mont64     |115223      |26567       |4.337     |
|minver         |123256      |26197       |4.705     |
|slre           |123919      |24771       |5.003     |
|nettle-sha256  |37710       |8674        |4.347     |
|ud             |21070       |4388        |4.802     |
|nsichneu       |12442       |1967        |6.325     |
|statemate      |5977        |1121        |5.332     |