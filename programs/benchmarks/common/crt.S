# See LICENSE for license details.

#include "encoding.h"

#define ROM_MEM_SIZE 0x20000000

  .section ".text.init"
  .option push
  .option norelax
  .globl _start
_start:
     li gp,ROM_MEM_SIZE       # The end of the RAM is queried from a memory-mapped hardware configuration register.
     lw sp,0(gp)              # Initializes the stack pointer sp at the end of the RAM.
  .option pop

  call main
