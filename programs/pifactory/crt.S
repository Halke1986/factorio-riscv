  .section ".text.init"
  .option push
  .option norelax
  .globl _start
_start:
     li sp,0x4000 # All CPU implementations should have at least 16 frames of RAM memory.
  .option pop

  call main
  li ra, 0x8000000 # jump past the program ROM to signify execution end
  jr ra
