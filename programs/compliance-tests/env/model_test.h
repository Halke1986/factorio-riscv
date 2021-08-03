#ifndef _COMPLIANCE_MODEL_H
#define _COMPLIANCE_MODEL_H

#define XLEN 32
#define TEST_CASE_1
#define ROM_MEM_SIZE 1073741824

// Any specific target init code should be put here.
#define RVMODEL_BOOT
//    .section .text.init;
//    .option push
//    .option norelax
//        li gp,ROM_MEM_SIZE       # The end of the RAM is queried from a memory-mapped hardware configuration register.
//        lw sp,0(gp)              # Initializes the stack pointer sp at the end of the RAM.
//    .option pop

// Test to see if a specific test has passed or not.
// It's left empty - assertion is done in hardware.
#define RVMODEL_IO_ASSERT_GPR_EQ(_SP, _R, _I)

// Just let the PC advance past the end of the code. It will cause the CPU to
// fetch 0x0 instruction and halt.
#define RVMODEL_HALT

// The .align 10 ensures that the signature ends frame (1024 bytes) boundary.
#define RVMODEL_DATA_BEGIN                                              \
  .align 10; .global begin_signature; begin_signature:

#define RVMODEL_DATA_END                                                      \
  .global end_signature; end_signature:                             \

//
//#define RVMODEL_DATA_SECTION \
//        .pushsection .tohost,"aw",@progbits;                            \
//        .align 8; .global tohost; tohost: .dword 0;                     \
//        .align 8; .global fromhost; fromhost: .dword 0;                 \
//        .popsection;                                                    \
//        .align 8; .global begin_regstate; begin_regstate:               \
//        .word 128;                                                      \
//        .align 8; .global end_regstate; end_regstate:                   \
//        .word 4;
//
//

//
//// _SP = (volatile register)
////TODO: Macro to output a string to IO
//#define LOCAL_IO_WRITE_STR(_STR) RVMODEL_IO_WRITE_STR(x31, _STR)
//#define RVMODEL_IO_WRITE_STR(_SP, _STR)                                 \
//    .section .data.string;                                              \
//20001:                                                                  \
//    .string _STR;                                                       \
//    .section .text.init;                                                \
//    la a0, 20001b;                                                      \
//    jal FN_WriteStr;
//
//#define RSIZE 4
//// _SP = (volatile register)
//#define LOCAL_IO_PUSH(_SP)                                              \
//    la      _SP,  begin_regstate;                                       \
//    sw      ra,   (1*RSIZE)(_SP);                                       \
//    sw      t0,   (2*RSIZE)(_SP);                                       \
//    sw      t1,   (3*RSIZE)(_SP);                                       \
//    sw      t2,   (4*RSIZE)(_SP);                                       \
//    sw      t3,   (5*RSIZE)(_SP);                                       \
//    sw      t4,   (6*RSIZE)(_SP);                                      \
//    sw      s0,   (7*RSIZE)(_SP);                                      \
//    sw      a0,   (8*RSIZE)(_SP);
//
//// _SP = (volatile register)
//#define LOCAL_IO_POP(_SP)                                               \
//    la      _SP,   begin_regstate;                                      \
//    lw      ra,   (1*RSIZE)(_SP);                                       \
//    lw      t0,   (2*RSIZE)(_SP);                                       \
//    lw      t1,   (3*RSIZE)(_SP);                                       \
//    lw      t2,   (4*RSIZE)(_SP);                                       \
//    lw      t3,   (5*RSIZE)(_SP);                                       \
//    lw      t4,   (6*RSIZE)(_SP);                                       \
//    lw      s0,   (7*RSIZE)(_SP);                                       \
//    lw      a0,   (8*RSIZE)(_SP);
//
////RVMODEL_IO_ASSERT_GPR_EQ
//// _SP = (volatile register)
//// _R = GPR
//// _I = Immediate
//// This code will check a test to see if the results
//// match the expected value.
//// It can also be used to tell if a set of tests is still running or has crashed
//#if 0
//// Spinning | =  "I am alive"
//#define RVMODEL_IO_ASSERT_GPR_EQ(_SP, _R, _I)                                 \
////    LOCAL_IO_PUSH(_SP)                                                  \
////    RVMODEL_IO_WRITE_STR2("|");                                       \
////    RVMODEL_IO_WRITE_STR2("\b=\b");                                       \
////    LOCAL_IO_POP(_SP)
//
//#else
//
//// Test to see if a specific test has passed or not.  Can assert or not.
//#define RVMODEL_IO_ASSERT_GPR_EQ(_SP, _R, _I)                                 \
////    LOCAL_IO_PUSH(_SP)                                                  \
////    mv          s0, _R;                                                 \
////    li          t5, _I;                                                 \
////    beq         s0, t5, 20002f;                                         \
////    RVMODEL_IO_WRITE_STR("Test Failed ");                              \
////    RVMODEL_IO_WRITE_STR(": ");                                        \
////    RVMODEL_IO_WRITE_STR(# _R);                                        \
////    RVMODEL_IO_WRITE_STR("( ");                                        \
////    mv      a0, s0;                                                     \
////    jal FN_WriteNmbr;                                                   \
////    RVMODEL_IO_WRITE_STR(" ) != ");                                    \
////    mv      a0, t5;                                                     \
////    jal FN_WriteNmbr;                                                   \
////    j 20003f;                                                           \
////20002:                                                                  \
////    RVMODEL_IO_WRITE_STR("Test Passed ");                              \
////20003:                                                                  \
////    RVMODEL_IO_WRITE_STR("\n");                                        \
////    LOCAL_IO_POP(_SP)
//
//#endif
//
//.section .text
//// FN_WriteStr: Add code here to write a string to IO
//// FN_WriteNmbr: Add code here to write a number (32/64bits) to IO
//FN_WriteStr: \
//    ret; \
//FN_WriteNmbr: \
//    ret;
//
////RVTEST_IO_ASSERT_SFPR_EQ
//#define RVMODEL_IO_ASSERT_SFPR_EQ(_F, _R, _I)
////RVTEST_IO_ASSERT_DFPR_EQ
//#define RVMODEL_IO_ASSERT_DFPR_EQ(_D, _R, _I)
//
//// TODO: specify the routine for setting machine software interrupt
//#define RVMODEL_SET_MSW_INT
//
//// TODO: specify the routine for clearing machine software interrupt
//#define RVMODEL_CLEAR_MSW_INT
//
//// TODO: specify the routine for clearing machine timer interrupt
//#define RVMODEL_CLEAR_MTIMER_INT
//
//// TODO: specify the routine for clearing machine external interrupt
//#define RVMODEL_CLEAR_MEXT_INT
//
#endif // _COMPLIANCE_MODEL_H

