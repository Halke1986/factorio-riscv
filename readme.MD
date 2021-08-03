# Factorio RISC V implementation

- Code needs to be start at address `0x0`. First operation needs to be a `nop`, as the Factorio treatment of zero-valued
  signal makes it difficult to distinguish between no activity and executing `0x0`.

## ROM Memory

* Executable code is stored in ROM memory, starting at address `0x4000000`.

## RAM Memory

* Memory is optimized primarily for size, requiring two combinators per stored frame. As a result it's not very fast.
  Read latency is 4 ticks, write and read throughput is 1/5t. Read and write share the same pipeline, so stacking both
  operations is not possible.
* Memory starts at address `0x0`.
* Only 4-byte aligned operations are allowed. Attempting to read or write from unaligned address results in undefined
  behavior.
* Writing or reading past the memory area results in undefined behavior.
* Input address of word to be read/written is split into frame address and signal address. This unusual addressing
  scheme allows for latency optimizations in upstream CPU components.

Yellow Input:

* `Info` - address of the frame to be read/written, numbered from one. Needs to be set both for read and write. To
  write/read word starting at N-th byte, input `Info=N / 1024 + 1`.
* The memory writes temporary signals to this wire. Upstream CPU components shouldn't rely on it being empty.

Blue Input:

* `Checkmark` - address of the signal (word) in frame to be written to, numbered from one. Incremented by 4, as the
  words are 4-byte wide. Needs to be set only for write operation. To write word starting at N-th byte,
  input `Checkmark=N % 1024 + 1`.
* `Info` - number of the signal (word) in frame to be read. Numbered from one; increment of 4. Needs to be set only for
  read operation. To read word starting at N-th byte, input `Info=N % 1024 + 1`.
* `Dot` - Value to be written.
* `Red` - reset the memory.

Yellow Output:

* `Dot` - Read value.
