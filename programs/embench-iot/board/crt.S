  .section ".text.init"
  .option push
  .option norelax
  .globl _start
_start:
     li sp,0x8000 # All CPU implementations should have at least 32 frames of RAM memory.
  .option pop

  call main
  li ra, 0x0
  ret
