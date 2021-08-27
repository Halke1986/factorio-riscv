# Factorio RISC V implementation

- Code needs to be start at address `0x0`. First operation needs to be a `nop`, as the Factorio treatment of zero-valued
  signal makes it difficult to distinguish between no activity and executing `0x0`.

## Program ROM Memory

* Executable code is stored in ROM memory, starting at address `0x4000000`. Program execution starts at `0x4000000`.
* 