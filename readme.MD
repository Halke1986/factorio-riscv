Factorio RISC V cpu implementation

- Code needs to be start at address `0x0`. First operation needs to be a `nop`, as the Factorio treatment of zero-valued
  signal makes it difficult to distinguish between no activity and executing `0x0`.

Memory.

- Memory is optimized primarily for size, requiring two combinators per stored frame. As a result it's not very
  fast. Read latency is 4 ticks, write and read throughput is 1/5t. Read and write share the same pipeline, so stacking
  both operations is impossible.
- Only 4-byte aligned operations are possible. Attempting to read or write from unaligned address results in undefined behavior.
- Writing or reading past the memory area results in undefined behavior.
  

Yellow Input:

- `Info` - number of frame to be read/written, numbered from one. Needs to be set both for read and write. To write/read
  word starting at N-th byte, calculate `Info=N/1024+1`.
- The memory writes various temporary signals to this wire. It shouldn't be relied on being empty.   

Blue Input:

- `Checkmark` - number of signal in frame to written to, numbered from one, increment of 4. Needs to be set only for
  write. To write word starting at N-th byte, calculate `Checkmark=N%1024+1`.
- `Info` - number of signal in frame to read to, numbered from one, increment of 4. Needs to be set only for read. To
  read word starting at N-th byte, calculate `Info=N%1024+1`.
- `Dot` - Value to be written.
- `Red` - reset the memory.

Yellow Output:

- `Dot` - Read value.
