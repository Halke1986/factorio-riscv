# 1 "tests/addi-01.S"
# 1 "/home/mwojcik/riscv/compiler//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "tests/addi-01.S"
# 19 "tests/addi-01.S"
# 1 "tests/env/model_test.h" 1
# 20 "tests/addi-01.S" 2
# 1 "tests/env/arch_test.h" 1
# 1 "tests/env/encoding.h" 1
# 2 "tests/env/arch_test.h" 2
# 99 "tests/env/arch_test.h"
.macro RVTEST_CODE_BEGIN
  .align 5
  .section .text.init;
  .globl rvtest_init; rvtest_init:






     ; .option push; .option norvc; li x1,(0xFEEDBEADFEEDBEAD & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x2,(0xFF76DF56FF76DF56 & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x3,(0x7FBB6FAB7FBB6FAB & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x4,(0xBFDDB7D5BFDDB7D5 & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; la x5,rvtest_code_begin; .option pop;;
     ; .option push; .option norvc; la x6,rvtest_data_begin; .option pop;;
     ; .option push; .option norvc; li x7,(0xB7FBB6FAB7FBB6FA & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x8,(0x5BFDDB7D5BFDDB7D & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x9,(0xADFEEDBEADFEEDBE & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x10,(0x56FF76DF56FF76DF & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x11,(0xAB7FBB6FAB7FBB6F & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x12,(0xD5BFDDB7D5BFDDB7 & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x13,(0xEADFEEDBEADFEEDB & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x14,(0xF56FF76DF56FF76D & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x15,(0xFAB7FBB6FAB7FBB6 & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x16,(0x7D5BFDDB7D5BFDDB & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x17,(0xBEADFEEDBEADFEED & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x18,(0xDF56FF76DF56FF76 & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x19,(0x6FAB7FBB6FAB7FBB & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x20,(0xB7D5BFDDB7D5BFDD & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x21,(0xDBEADFEEDBEADFEE & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x22,(0x6DF56FF76DF56FF7 & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x23,(0xB6FAB7FBB6FAB7FB & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x24,(0xDB7D5BFDDB7D5BFD & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x25,(0xEDBEADFEEDBEADFE & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x26,(0x76DF56FF76DF56FF & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x27,(0xBB6FAB7FBB6FAB7F & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x28,(0xDDB7D5BFDDB7D5BF & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x29,(0xEEDBEADFEEDBEADF & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x30,(0xF76DF56FF76DF56F & 0xFFFFFFFF); .option pop;;
     ; .option push; .option norvc; li x31,(0xFBB6FAB7FBB6FAB7 & 0xFFFFFFFF); .option pop;;
  .globl rvtest_code_begin
  rvtest_code_begin:
.endm



.macro RVTEST_CODE_END
  .align 4;
  .global rvtest_code_end
  rvtest_code_end:
# 498 "tests/env/arch_test.h"
.endm


.macro RVTEST_DATA_BEGIN
.data
.align 4
.global rvtest_data_begin
rvtest_data_begin:
# 519 "tests/env/arch_test.h"
.endm

.macro RVTEST_DATA_END
.global rvtest_data_end
rvtest_data_end:
.endm
# 533 "tests/env/arch_test.h"
.set offset,0;
# 21 "tests/addi-01.S" 2


.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:

RVTEST_CODE_BEGIN





; .option push; .option norvc; la x20,signature_x20_1; .option pop;; .set offset,0;

inst_0:


; .option push; .option norvc; li x30,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x31, x30, ((-0x800) | (-(((-0x800) >> 11) & 1) << 11));; .if 0 == 1; sw x31,0(x20); .set offset,0 +4; .endif; .if 0 == 0; sw x31,offset(x20); .set offset,offset+4; .endif;;

inst_1:


; .option push; .option norvc; li x2,((0x7fffffff) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x2, x2, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x2,4(x20); .set offset,4 +4; .endif; .if 0 == 0; sw x2,offset(x20); .set offset,offset+4; .endif;;

inst_2:


; .option push; .option norvc; li x27,((-0x40000001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x25, x27, ((-0x5) | (-(((-0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x25,8(x20); .set offset,8 +4; .endif; .if 0 == 0; sw x25,offset(x20); .set offset,offset+4; .endif;;

inst_3:


; .option push; .option norvc; li x29,((-0x20000001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x17, x29, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x17,12(x20); .set offset,12 +4; .endif; .if 0 == 0; sw x17,offset(x20); .set offset,offset+4; .endif;;

inst_4:


; .option push; .option norvc; li x0,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x0, ((0x10) | (-(((0x10) >> 11) & 1) << 11));; .if 0 == 1; sw x11,16(x20); .set offset,16 +4; .endif; .if 0 == 0; sw x11,offset(x20); .set offset,offset+4; .endif;;

inst_5:


; .option push; .option norvc; li x15,((-0x8000001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x7, x15, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x7,20(x20); .set offset,20 +4; .endif; .if 0 == 0; sw x7,offset(x20); .set offset,offset+4; .endif;;

inst_6:


; .option push; .option norvc; li x19,((-0x4000001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x15, x19, ((-0x800) | (-(((-0x800) >> 11) & 1) << 11));; .if 0 == 1; sw x15,24(x20); .set offset,24 +4; .endif; .if 0 == 0; sw x15,offset(x20); .set offset,offset+4; .endif;;

inst_7:


; .option push; .option norvc; li x1,((-0x2000001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x30, x1, ((-0x6) | (-(((-0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x30,28(x20); .set offset,28 +4; .endif; .if 0 == 0; sw x30,offset(x20); .set offset,offset+4; .endif;;

inst_8:


; .option push; .option norvc; li x26,((-0x1000001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x6, x26, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x6,32(x20); .set offset,32 +4; .endif; .if 0 == 0; sw x6,offset(x20); .set offset,offset+4; .endif;;

inst_9:


; .option push; .option norvc; li x22,((-0x800001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x8, x22, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x8,36(x20); .set offset,36 +4; .endif; .if 0 == 0; sw x8,offset(x20); .set offset,offset+4; .endif;;

inst_10:


; .option push; .option norvc; li x7,((-0x400001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x1, x7, ((-0x6) | (-(((-0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x1,40(x20); .set offset,40 +4; .endif; .if 0 == 0; sw x1,offset(x20); .set offset,offset+4; .endif;;

inst_11:


; .option push; .option norvc; li x9,((-0x200001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x26, x9, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x26,44(x20); .set offset,44 +4; .endif; .if 0 == 0; sw x26,offset(x20); .set offset,offset+4; .endif;;

inst_12:


; .option push; .option norvc; li x4,((-0x100001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x22, x4, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x22,48(x20); .set offset,48 +4; .endif; .if 0 == 0; sw x22,offset(x20); .set offset,offset+4; .endif;;

inst_13:


; .option push; .option norvc; li x8,((-0x80001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x19, x8, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x19,52(x20); .set offset,52 +4; .endif; .if 0 == 0; sw x19,offset(x20); .set offset,offset+4; .endif;;

inst_14:


; .option push; .option norvc; li x31,((-0x40001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x3, x31, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x3,56(x20); .set offset,56 +4; .endif; .if 0 == 0; sw x3,offset(x20); .set offset,offset+4; .endif;;

inst_15:


; .option push; .option norvc; li x17,((-0x20001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x16, x17, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x16,60(x20); .set offset,60 +4; .endif; .if 0 == 0; sw x16,offset(x20); .set offset,offset+4; .endif;;

inst_16:


; .option push; .option norvc; li x14,((-0x10001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x9, x14, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x9,64(x20); .set offset,64 +4; .endif; .if 0 == 0; sw x9,offset(x20); .set offset,offset+4; .endif;;

inst_17:


; .option push; .option norvc; li x5,((-0x8001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x10, x5, ((0x8) | (-(((0x8) >> 11) & 1) << 11));; .if 0 == 1; sw x10,68(x20); .set offset,68 +4; .endif; .if 0 == 0; sw x10,offset(x20); .set offset,offset+4; .endif;;

inst_18:


; .option push; .option norvc; li x12,((-0x4001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x18, x12, ((-0x9) | (-(((-0x9) >> 11) & 1) << 11));; .if 0 == 1; sw x18,72(x20); .set offset,72 +4; .endif; .if 0 == 0; sw x18,offset(x20); .set offset,offset+4; .endif;;

inst_19:


; .option push; .option norvc; li x11,((-0x2001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x0, x11, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x0,76(x20); .set offset,76 +4; .endif; .if 0 == 0; sw x0,offset(x20); .set offset,offset+4; .endif;;

inst_20:


; .option push; .option norvc; li x13,((-0x1001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x4, x13, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x4,80(x20); .set offset,80 +4; .endif; .if 0 == 0; sw x4,offset(x20); .set offset,offset+4; .endif;;

inst_21:


; .option push; .option norvc; li x3,((-0x801) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x24, x3, ((-0x41) | (-(((-0x41) >> 11) & 1) << 11));; .if 0 == 1; sw x24,84(x20); .set offset,84 +4; .endif; .if 0 == 0; sw x24,offset(x20); .set offset,offset+4; .endif;;

inst_22:


; .option push; .option norvc; li x24,((-0x401) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x12, x24, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x12,88(x20); .set offset,88 +4; .endif; .if 0 == 0; sw x12,offset(x20); .set offset,offset+4; .endif;;

inst_23:


; .option push; .option norvc; li x18,((-0x201) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x13, x18, ((-0x101) | (-(((-0x101) >> 11) & 1) << 11));; .if 0 == 1; sw x13,92(x20); .set offset,92 +4; .endif; .if 0 == 0; sw x13,offset(x20); .set offset,offset+4; .endif;;

inst_24:


; .option push; .option norvc; li x21,((-0x101) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x27, x21, ((-0x7) | (-(((-0x7) >> 11) & 1) << 11));; .if 0 == 1; sw x27,96(x20); .set offset,96 +4; .endif; .if 0 == 0; sw x27,offset(x20); .set offset,offset+4; .endif;;
; .option push; .option norvc; la x1,signature_x1_0; .option pop;; .set offset,0;

inst_25:


; .option push; .option norvc; li x16,((-0x81) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x14, x16, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x14,0(x1); .set offset,0 +4; .endif; .if 0 == 0; sw x14,offset(x1); .set offset,offset+4; .endif;;

inst_26:


; .option push; .option norvc; li x6,((-0x41) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x20, x6, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x20,4(x1); .set offset,4 +4; .endif; .if 0 == 0; sw x20,offset(x1); .set offset,offset+4; .endif;;

inst_27:


; .option push; .option norvc; li x25,((-0x21) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x29, x25, ((0x100) | (-(((0x100) >> 11) & 1) << 11));; .if 0 == 1; sw x29,8(x1); .set offset,8 +4; .endif; .if 0 == 0; sw x29,offset(x1); .set offset,offset+4; .endif;;

inst_28:


; .option push; .option norvc; li x20,((-0x11) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x21, x20, ((0x7) | (-(((0x7) >> 11) & 1) << 11));; .if 0 == 1; sw x21,12(x1); .set offset,12 +4; .endif; .if 0 == 0; sw x21,offset(x1); .set offset,offset+4; .endif;;

inst_29:


; .option push; .option norvc; li x10,((-0x9) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x28, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x28,16(x1); .set offset,16 +4; .endif; .if 0 == 0; sw x28,offset(x1); .set offset,offset+4; .endif;;

inst_30:


; .option push; .option norvc; li x28,((-0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x23, x28, ((-0x5) | (-(((-0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x23,20(x1); .set offset,20 +4; .endif; .if 0 == 0; sw x23,offset(x1); .set offset,offset+4; .endif;;

inst_31:


; .option push; .option norvc; li x23,((-0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x5, x23, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x5,24(x1); .set offset,24 +4; .endif; .if 0 == 0; sw x5,offset(x1); .set offset,offset+4; .endif;;

inst_32:


; .option push; .option norvc; li x10,((-0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,28(x1); .set offset,28 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_33:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x7ff) | (-(((0x7ff) >> 11) & 1) << 11));; .if 0 == 1; sw x11,32(x1); .set offset,32 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_34:


; .option push; .option norvc; li x10,((0x4000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x401) | (-(((-0x401) >> 11) & 1) << 11));; .if 0 == 1; sw x11,36(x1); .set offset,36 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_35:


; .option push; .option norvc; li x10,((-0x200001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x201) | (-(((-0x201) >> 11) & 1) << 11));; .if 0 == 1; sw x11,40(x1); .set offset,40 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_36:


; .option push; .option norvc; li x10,((0x10000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x81) | (-(((-0x81) >> 11) & 1) << 11));; .if 0 == 1; sw x11,44(x1); .set offset,44 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_37:


; .option push; .option norvc; li x10,((-0x1000001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x21) | (-(((-0x21) >> 11) & 1) << 11));; .if 0 == 1; sw x11,48(x1); .set offset,48 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_38:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x11) | (-(((-0x11) >> 11) & 1) << 11));; .if 0 == 1; sw x11,52(x1); .set offset,52 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_39:


; .option push; .option norvc; li x10,((0x1000000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x3) | (-(((-0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,56(x1); .set offset,56 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_40:


; .option push; .option norvc; li x10,((-0x20001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2) | (-(((-0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,60(x1); .set offset,60 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_41:


; .option push; .option norvc; li x10,((-0x80000000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,64(x1); .set offset,64 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_42:


; .option push; .option norvc; li x10,((0x40000000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,68(x1); .set offset,68 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_43:


; .option push; .option norvc; li x10,((0x20000000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,72(x1); .set offset,72 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_44:


; .option push; .option norvc; li x10,((0x10000000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,76(x1); .set offset,76 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_45:


; .option push; .option norvc; li x10,((0x8000000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3ff) | (-(((0x3ff) >> 11) & 1) << 11));; .if 0 == 1; sw x11,80(x1); .set offset,80 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_46:


; .option push; .option norvc; li x10,((0x4000000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x6) | (-(((-0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,84(x1); .set offset,84 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_47:


; .option push; .option norvc; li x10,((0x2000000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,88(x1); .set offset,88 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_48:


; .option push; .option norvc; li x10,((0x800000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,92(x1); .set offset,92 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_49:


; .option push; .option norvc; li x10,((0x400000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,96(x1); .set offset,96 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_50:


; .option push; .option norvc; li x10,((0x200000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,100(x1); .set offset,100 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_51:


; .option push; .option norvc; li x10,((0x100000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,104(x1); .set offset,104 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_52:


; .option push; .option norvc; li x10,((0x80000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,108(x1); .set offset,108 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_53:


; .option push; .option norvc; li x10,((0x40000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,112(x1); .set offset,112 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_54:


; .option push; .option norvc; li x10,((0x20000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,116(x1); .set offset,116 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_55:


; .option push; .option norvc; li x10,((0x8000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,120(x1); .set offset,120 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_56:


; .option push; .option norvc; li x10,((0x2000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,124(x1); .set offset,124 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_57:


; .option push; .option norvc; li x10,((0x1000) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,128(x1); .set offset,128 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_58:


; .option push; .option norvc; li x10,((0x800) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,132(x1); .set offset,132 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_59:


; .option push; .option norvc; li x10,((0x400) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,136(x1); .set offset,136 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_60:


; .option push; .option norvc; li x10,((0x200) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,140(x1); .set offset,140 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_61:


; .option push; .option norvc; li x10,((0x100) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x9) | (-(((-0x9) >> 11) & 1) << 11));; .if 0 == 1; sw x11,144(x1); .set offset,144 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_62:


; .option push; .option norvc; li x10,((0x80) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,148(x1); .set offset,148 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_63:


; .option push; .option norvc; li x10,((0x40) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x400) | (-(((-0x400) >> 11) & 1) << 11));; .if 0 == 1; sw x11,152(x1); .set offset,152 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_64:


; .option push; .option norvc; li x10,((0x20) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3ff) | (-(((0x3ff) >> 11) & 1) << 11));; .if 0 == 1; sw x11,156(x1); .set offset,156 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_65:


; .option push; .option norvc; li x10,((0x10) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,160(x1); .set offset,160 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_66:


; .option push; .option norvc; li x10,((0x8) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x1) | (-(((-0x1) >> 11) & 1) << 11));; .if 0 == 1; sw x11,164(x1); .set offset,164 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_67:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,168(x1); .set offset,168 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_68:


; .option push; .option norvc; li x10,((0x1) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x7) | (-(((0x7) >> 11) & 1) << 11));; .if 0 == 1; sw x11,172(x1); .set offset,172 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_69:


; .option push; .option norvc; li x10,((0x9) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x400) | (-(((0x400) >> 11) & 1) << 11));; .if 0 == 1; sw x11,176(x1); .set offset,176 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_70:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x200) | (-(((0x200) >> 11) & 1) << 11));; .if 0 == 1; sw x11,180(x1); .set offset,180 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_71:


; .option push; .option norvc; li x10,((-0x801) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x80) | (-(((0x80) >> 11) & 1) << 11));; .if 0 == 1; sw x11,184(x1); .set offset,184 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_72:


; .option push; .option norvc; li x10,((0x400) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x40) | (-(((0x40) >> 11) & 1) << 11));; .if 0 == 1; sw x11,188(x1); .set offset,188 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_73:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x20) | (-(((0x20) >> 11) & 1) << 11));; .if 0 == 1; sw x11,192(x1); .set offset,192 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_74:


; .option push; .option norvc; li x10,((-0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x1) | (-(((0x1) >> 11) & 1) << 11));; .if 0 == 1; sw x11,196(x1); .set offset,196 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_75:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,200(x1); .set offset,200 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_76:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,204(x1); .set offset,204 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_77:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,208(x1); .set offset,208 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_78:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,212(x1); .set offset,212 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_79:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,216(x1); .set offset,216 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_80:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,220(x1); .set offset,220 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_81:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,224(x1); .set offset,224 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_82:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,228(x1); .set offset,228 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_83:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,232(x1); .set offset,232 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_84:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,236(x1); .set offset,236 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_85:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,240(x1); .set offset,240 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_86:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,244(x1); .set offset,244 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_87:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,248(x1); .set offset,248 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_88:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,252(x1); .set offset,252 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_89:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,256(x1); .set offset,256 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_90:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,260(x1); .set offset,260 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_91:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,264(x1); .set offset,264 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_92:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,268(x1); .set offset,268 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_93:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,272(x1); .set offset,272 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_94:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,276(x1); .set offset,276 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_95:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,280(x1); .set offset,280 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_96:


; .option push; .option norvc; li x10,((0xb505) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,284(x1); .set offset,284 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_97:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,288(x1); .set offset,288 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_98:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,292(x1); .set offset,292 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_99:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,296(x1); .set offset,296 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_100:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,300(x1); .set offset,300 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_101:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,304(x1); .set offset,304 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_102:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,308(x1); .set offset,308 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_103:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,312(x1); .set offset,312 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_104:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,316(x1); .set offset,316 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_105:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,320(x1); .set offset,320 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_106:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,324(x1); .set offset,324 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_107:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,328(x1); .set offset,328 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_108:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,332(x1); .set offset,332 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_109:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,336(x1); .set offset,336 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_110:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,340(x1); .set offset,340 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_111:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,344(x1); .set offset,344 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_112:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,348(x1); .set offset,348 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_113:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,352(x1); .set offset,352 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_114:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,356(x1); .set offset,356 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_115:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,360(x1); .set offset,360 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_116:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,364(x1); .set offset,364 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_117:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,368(x1); .set offset,368 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_118:


; .option push; .option norvc; li x10,((-0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,372(x1); .set offset,372 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_119:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,376(x1); .set offset,376 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_120:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,380(x1); .set offset,380 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_121:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,384(x1); .set offset,384 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_122:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,388(x1); .set offset,388 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_123:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,392(x1); .set offset,392 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_124:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,396(x1); .set offset,396 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_125:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,400(x1); .set offset,400 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_126:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,404(x1); .set offset,404 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_127:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,408(x1); .set offset,408 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_128:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,412(x1); .set offset,412 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_129:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,416(x1); .set offset,416 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_130:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,420(x1); .set offset,420 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_131:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,424(x1); .set offset,424 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_132:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,428(x1); .set offset,428 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_133:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,432(x1); .set offset,432 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_134:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,436(x1); .set offset,436 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_135:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,440(x1); .set offset,440 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_136:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,444(x1); .set offset,444 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_137:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,448(x1); .set offset,448 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_138:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,452(x1); .set offset,452 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_139:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,456(x1); .set offset,456 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_140:


; .option push; .option norvc; li x10,((0x66666667) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,460(x1); .set offset,460 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_141:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,464(x1); .set offset,464 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_142:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,468(x1); .set offset,468 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_143:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,472(x1); .set offset,472 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_144:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,476(x1); .set offset,476 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_145:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,480(x1); .set offset,480 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_146:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,484(x1); .set offset,484 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_147:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,488(x1); .set offset,488 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_148:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,492(x1); .set offset,492 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_149:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,496(x1); .set offset,496 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_150:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,500(x1); .set offset,500 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_151:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,504(x1); .set offset,504 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_152:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,508(x1); .set offset,508 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_153:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,512(x1); .set offset,512 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_154:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,516(x1); .set offset,516 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_155:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,520(x1); .set offset,520 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_156:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,524(x1); .set offset,524 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_157:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,528(x1); .set offset,528 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_158:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,532(x1); .set offset,532 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_159:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,536(x1); .set offset,536 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_160:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,540(x1); .set offset,540 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_161:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,544(x1); .set offset,544 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_162:


; .option push; .option norvc; li x10,((0x33333334) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,548(x1); .set offset,548 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_163:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,552(x1); .set offset,552 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_164:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,556(x1); .set offset,556 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_165:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,560(x1); .set offset,560 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_166:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,564(x1); .set offset,564 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_167:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,568(x1); .set offset,568 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_168:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,572(x1); .set offset,572 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_169:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,576(x1); .set offset,576 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_170:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,580(x1); .set offset,580 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_171:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,584(x1); .set offset,584 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_172:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,588(x1); .set offset,588 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_173:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,592(x1); .set offset,592 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_174:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,596(x1); .set offset,596 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_175:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,600(x1); .set offset,600 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_176:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,604(x1); .set offset,604 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_177:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,608(x1); .set offset,608 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_178:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,612(x1); .set offset,612 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_179:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,616(x1); .set offset,616 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_180:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,620(x1); .set offset,620 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_181:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,624(x1); .set offset,624 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_182:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,628(x1); .set offset,628 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_183:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,632(x1); .set offset,632 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_184:


; .option push; .option norvc; li x10,((0x6) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,636(x1); .set offset,636 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_185:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,640(x1); .set offset,640 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_186:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,644(x1); .set offset,644 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_187:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,648(x1); .set offset,648 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_188:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,652(x1); .set offset,652 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_189:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,656(x1); .set offset,656 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_190:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,660(x1); .set offset,660 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_191:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,664(x1); .set offset,664 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_192:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,668(x1); .set offset,668 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_193:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,672(x1); .set offset,672 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_194:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,676(x1); .set offset,676 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_195:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,680(x1); .set offset,680 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_196:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,684(x1); .set offset,684 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_197:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,688(x1); .set offset,688 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_198:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,692(x1); .set offset,692 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_199:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,696(x1); .set offset,696 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_200:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,700(x1); .set offset,700 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_201:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,704(x1); .set offset,704 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_202:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,708(x1); .set offset,708 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_203:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,712(x1); .set offset,712 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_204:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,716(x1); .set offset,716 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_205:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,720(x1); .set offset,720 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_206:


; .option push; .option norvc; li x10,((-0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,724(x1); .set offset,724 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_207:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,728(x1); .set offset,728 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_208:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,732(x1); .set offset,732 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_209:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,736(x1); .set offset,736 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_210:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,740(x1); .set offset,740 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_211:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,744(x1); .set offset,744 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_212:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,748(x1); .set offset,748 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_213:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,752(x1); .set offset,752 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_214:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,756(x1); .set offset,756 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_215:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,760(x1); .set offset,760 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_216:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,764(x1); .set offset,764 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_217:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,768(x1); .set offset,768 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_218:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,772(x1); .set offset,772 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_219:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,776(x1); .set offset,776 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_220:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,780(x1); .set offset,780 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_221:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,784(x1); .set offset,784 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_222:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,788(x1); .set offset,788 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_223:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,792(x1); .set offset,792 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_224:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,796(x1); .set offset,796 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_225:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,800(x1); .set offset,800 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_226:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,804(x1); .set offset,804 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_227:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,808(x1); .set offset,808 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_228:


; .option push; .option norvc; li x10,((0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,812(x1); .set offset,812 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_229:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,816(x1); .set offset,816 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_230:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,820(x1); .set offset,820 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_231:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,824(x1); .set offset,824 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_232:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,828(x1); .set offset,828 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_233:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,832(x1); .set offset,832 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_234:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,836(x1); .set offset,836 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_235:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,840(x1); .set offset,840 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_236:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,844(x1); .set offset,844 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_237:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,848(x1); .set offset,848 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_238:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,852(x1); .set offset,852 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_239:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,856(x1); .set offset,856 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_240:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,860(x1); .set offset,860 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_241:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,864(x1); .set offset,864 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_242:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,868(x1); .set offset,868 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_243:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,872(x1); .set offset,872 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_244:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,876(x1); .set offset,876 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_245:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,880(x1); .set offset,880 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_246:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,884(x1); .set offset,884 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_247:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,888(x1); .set offset,888 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_248:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,892(x1); .set offset,892 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_249:


; .option push; .option norvc; li x10,((0x4) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,896(x1); .set offset,896 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_250:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,900(x1); .set offset,900 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_251:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,904(x1); .set offset,904 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_252:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,908(x1); .set offset,908 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_253:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,912(x1); .set offset,912 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_254:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,916(x1); .set offset,916 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_255:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,920(x1); .set offset,920 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_256:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,924(x1); .set offset,924 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_257:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,928(x1); .set offset,928 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_258:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,932(x1); .set offset,932 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_259:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,936(x1); .set offset,936 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_260:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,940(x1); .set offset,940 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_261:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,944(x1); .set offset,944 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_262:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,948(x1); .set offset,948 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_263:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,952(x1); .set offset,952 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_264:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,956(x1); .set offset,956 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_265:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,960(x1); .set offset,960 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_266:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,964(x1); .set offset,964 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_267:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,968(x1); .set offset,968 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_268:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,972(x1); .set offset,972 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_269:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,976(x1); .set offset,976 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_270:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,980(x1); .set offset,980 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_271:


; .option push; .option norvc; li x10,((0xb503) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,984(x1); .set offset,984 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_272:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,988(x1); .set offset,988 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_273:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,992(x1); .set offset,992 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_274:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,996(x1); .set offset,996 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_275:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1000(x1); .set offset,1000 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_276:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1004(x1); .set offset,1004 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_277:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1008(x1); .set offset,1008 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_278:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1012(x1); .set offset,1012 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_279:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1016(x1); .set offset,1016 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_280:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1020(x1); .set offset,1020 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_281:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1024(x1); .set offset,1024 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_282:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1028(x1); .set offset,1028 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_283:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1032(x1); .set offset,1032 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_284:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1036(x1); .set offset,1036 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_285:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1040(x1); .set offset,1040 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_286:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1044(x1); .set offset,1044 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_287:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1048(x1); .set offset,1048 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_288:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1052(x1); .set offset,1052 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_289:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1056(x1); .set offset,1056 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_290:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1060(x1); .set offset,1060 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_291:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1064(x1); .set offset,1064 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_292:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1068(x1); .set offset,1068 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_293:


; .option push; .option norvc; li x10,((0x0) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1072(x1); .set offset,1072 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_294:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1076(x1); .set offset,1076 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_295:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1080(x1); .set offset,1080 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_296:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1084(x1); .set offset,1084 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_297:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1088(x1); .set offset,1088 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_298:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1092(x1); .set offset,1092 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_299:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1096(x1); .set offset,1096 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_300:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1100(x1); .set offset,1100 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_301:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1104(x1); .set offset,1104 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_302:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1108(x1); .set offset,1108 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_303:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1112(x1); .set offset,1112 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_304:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1116(x1); .set offset,1116 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_305:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1120(x1); .set offset,1120 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_306:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1124(x1); .set offset,1124 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_307:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1128(x1); .set offset,1128 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_308:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1132(x1); .set offset,1132 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_309:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1136(x1); .set offset,1136 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_310:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1140(x1); .set offset,1140 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_311:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1144(x1); .set offset,1144 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_312:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1148(x1); .set offset,1148 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_313:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1152(x1); .set offset,1152 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_314:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1156(x1); .set offset,1156 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_315:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1160(x1); .set offset,1160 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_316:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1164(x1); .set offset,1164 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_317:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1168(x1); .set offset,1168 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_318:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1172(x1); .set offset,1172 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_319:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1176(x1); .set offset,1176 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_320:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1180(x1); .set offset,1180 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_321:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1184(x1); .set offset,1184 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_322:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1188(x1); .set offset,1188 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_323:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1192(x1); .set offset,1192 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_324:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1196(x1); .set offset,1196 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_325:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1200(x1); .set offset,1200 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_326:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1204(x1); .set offset,1204 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_327:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1208(x1); .set offset,1208 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_328:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1212(x1); .set offset,1212 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_329:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1216(x1); .set offset,1216 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_330:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1220(x1); .set offset,1220 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_331:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1224(x1); .set offset,1224 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_332:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1228(x1); .set offset,1228 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_333:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1232(x1); .set offset,1232 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_334:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1236(x1); .set offset,1236 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_335:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1240(x1); .set offset,1240 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_336:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1244(x1); .set offset,1244 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_337:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1248(x1); .set offset,1248 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_338:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1252(x1); .set offset,1252 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_339:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1256(x1); .set offset,1256 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_340:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1260(x1); .set offset,1260 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_341:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1264(x1); .set offset,1264 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_342:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1268(x1); .set offset,1268 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_343:


; .option push; .option norvc; li x10,((0x55555555) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1272(x1); .set offset,1272 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_344:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1276(x1); .set offset,1276 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_345:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1280(x1); .set offset,1280 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_346:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1284(x1); .set offset,1284 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_347:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1288(x1); .set offset,1288 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_348:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1292(x1); .set offset,1292 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_349:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1296(x1); .set offset,1296 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_350:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1300(x1); .set offset,1300 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_351:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1304(x1); .set offset,1304 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_352:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1308(x1); .set offset,1308 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_353:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1312(x1); .set offset,1312 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_354:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1316(x1); .set offset,1316 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_355:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1320(x1); .set offset,1320 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_356:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1324(x1); .set offset,1324 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_357:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1328(x1); .set offset,1328 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_358:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1332(x1); .set offset,1332 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_359:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1336(x1); .set offset,1336 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_360:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1340(x1); .set offset,1340 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_361:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1344(x1); .set offset,1344 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_362:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1348(x1); .set offset,1348 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_363:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1352(x1); .set offset,1352 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_364:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1356(x1); .set offset,1356 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_365:


; .option push; .option norvc; li x10,((0x3) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1360(x1); .set offset,1360 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_366:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1364(x1); .set offset,1364 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_367:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1368(x1); .set offset,1368 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_368:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1372(x1); .set offset,1372 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_369:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1376(x1); .set offset,1376 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_370:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1380(x1); .set offset,1380 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_371:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1384(x1); .set offset,1384 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_372:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1388(x1); .set offset,1388 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_373:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1392(x1); .set offset,1392 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_374:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1396(x1); .set offset,1396 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_375:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1400(x1); .set offset,1400 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_376:


; .option push; .option norvc; li x10,((0x66666665) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1404(x1); .set offset,1404 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_377:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1408(x1); .set offset,1408 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_378:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1412(x1); .set offset,1412 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_379:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1416(x1); .set offset,1416 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_380:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1420(x1); .set offset,1420 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_381:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1424(x1); .set offset,1424 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_382:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1428(x1); .set offset,1428 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_383:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1432(x1); .set offset,1432 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_384:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1436(x1); .set offset,1436 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_385:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1440(x1); .set offset,1440 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_386:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1444(x1); .set offset,1444 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_387:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1448(x1); .set offset,1448 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_388:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1452(x1); .set offset,1452 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_389:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1456(x1); .set offset,1456 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_390:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1460(x1); .set offset,1460 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_391:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1464(x1); .set offset,1464 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_392:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1468(x1); .set offset,1468 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_393:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1472(x1); .set offset,1472 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_394:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1476(x1); .set offset,1476 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_395:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1480(x1); .set offset,1480 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_396:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1484(x1); .set offset,1484 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_397:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1488(x1); .set offset,1488 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_398:


; .option push; .option norvc; li x10,((0x33333332) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1492(x1); .set offset,1492 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_399:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1496(x1); .set offset,1496 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_400:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1500(x1); .set offset,1500 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_401:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1504(x1); .set offset,1504 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_402:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1508(x1); .set offset,1508 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_403:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1512(x1); .set offset,1512 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_404:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1516(x1); .set offset,1516 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_405:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1520(x1); .set offset,1520 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_406:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1524(x1); .set offset,1524 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_407:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1528(x1); .set offset,1528 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_408:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1532(x1); .set offset,1532 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_409:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1536(x1); .set offset,1536 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_410:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1540(x1); .set offset,1540 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_411:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1544(x1); .set offset,1544 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_412:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1548(x1); .set offset,1548 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_413:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1552(x1); .set offset,1552 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_414:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1556(x1); .set offset,1556 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_415:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1560(x1); .set offset,1560 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_416:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1564(x1); .set offset,1564 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_417:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1568(x1); .set offset,1568 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_418:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1572(x1); .set offset,1572 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_419:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1576(x1); .set offset,1576 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_420:


; .option push; .option norvc; li x10,((0x55555554) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1580(x1); .set offset,1580 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_421:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1584(x1); .set offset,1584 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_422:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1588(x1); .set offset,1588 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_423:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1592(x1); .set offset,1592 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_424:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1596(x1); .set offset,1596 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_425:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1600(x1); .set offset,1600 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_426:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1604(x1); .set offset,1604 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_427:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1608(x1); .set offset,1608 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_428:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1612(x1); .set offset,1612 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_429:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1616(x1); .set offset,1616 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_430:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1620(x1); .set offset,1620 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_431:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1624(x1); .set offset,1624 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_432:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1628(x1); .set offset,1628 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_433:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1632(x1); .set offset,1632 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_434:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1636(x1); .set offset,1636 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_435:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1640(x1); .set offset,1640 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_436:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1644(x1); .set offset,1644 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_437:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1648(x1); .set offset,1648 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_438:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1652(x1); .set offset,1652 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_439:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1656(x1); .set offset,1656 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_440:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1660(x1); .set offset,1660 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_441:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1664(x1); .set offset,1664 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_442:


; .option push; .option norvc; li x10,((0x2) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1668(x1); .set offset,1668 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_443:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1672(x1); .set offset,1672 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_444:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1676(x1); .set offset,1676 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_445:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1680(x1); .set offset,1680 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_446:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1684(x1); .set offset,1684 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_447:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1688(x1); .set offset,1688 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_448:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1692(x1); .set offset,1692 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_449:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1696(x1); .set offset,1696 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_450:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1700(x1); .set offset,1700 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_451:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1704(x1); .set offset,1704 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_452:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1708(x1); .set offset,1708 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_453:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1712(x1); .set offset,1712 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_454:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1716(x1); .set offset,1716 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_455:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1720(x1); .set offset,1720 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_456:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1724(x1); .set offset,1724 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_457:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1728(x1); .set offset,1728 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_458:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1732(x1); .set offset,1732 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_459:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1736(x1); .set offset,1736 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_460:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1740(x1); .set offset,1740 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_461:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1744(x1); .set offset,1744 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_462:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1748(x1); .set offset,1748 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_463:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1752(x1); .set offset,1752 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_464:


; .option push; .option norvc; li x10,((0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1756(x1); .set offset,1756 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_465:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1760(x1); .set offset,1760 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_466:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1764(x1); .set offset,1764 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_467:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1768(x1); .set offset,1768 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_468:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1772(x1); .set offset,1772 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_469:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1776(x1); .set offset,1776 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_470:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1780(x1); .set offset,1780 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_471:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1784(x1); .set offset,1784 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_472:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1788(x1); .set offset,1788 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_473:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1792(x1); .set offset,1792 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_474:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1796(x1); .set offset,1796 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_475:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1800(x1); .set offset,1800 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_476:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1804(x1); .set offset,1804 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_477:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1808(x1); .set offset,1808 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_478:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1812(x1); .set offset,1812 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_479:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1816(x1); .set offset,1816 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_480:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1820(x1); .set offset,1820 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_481:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1824(x1); .set offset,1824 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_482:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1828(x1); .set offset,1828 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_483:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1832(x1); .set offset,1832 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_484:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1836(x1); .set offset,1836 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_485:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1840(x1); .set offset,1840 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_486:


; .option push; .option norvc; li x10,((-0xb504) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1844(x1); .set offset,1844 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_487:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1848(x1); .set offset,1848 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_488:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1852(x1); .set offset,1852 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_489:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1856(x1); .set offset,1856 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_490:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1860(x1); .set offset,1860 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_491:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1864(x1); .set offset,1864 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_492:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1868(x1); .set offset,1868 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_493:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1872(x1); .set offset,1872 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_494:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1876(x1); .set offset,1876 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_495:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1880(x1); .set offset,1880 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_496:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1884(x1); .set offset,1884 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_497:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1888(x1); .set offset,1888 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_498:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1892(x1); .set offset,1892 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_499:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1896(x1); .set offset,1896 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_500:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1900(x1); .set offset,1900 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_501:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1904(x1); .set offset,1904 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_502:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1908(x1); .set offset,1908 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_503:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1912(x1); .set offset,1912 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_504:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1916(x1); .set offset,1916 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_505:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1920(x1); .set offset,1920 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_506:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1924(x1); .set offset,1924 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_507:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1928(x1); .set offset,1928 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_508:


; .option push; .option norvc; li x10,((0x66666666) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1932(x1); .set offset,1932 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_509:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1936(x1); .set offset,1936 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_510:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1940(x1); .set offset,1940 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_511:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1944(x1); .set offset,1944 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_512:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1948(x1); .set offset,1948 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_513:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1952(x1); .set offset,1952 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_514:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1956(x1); .set offset,1956 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_515:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1960(x1); .set offset,1960 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_516:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1964(x1); .set offset,1964 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_517:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1968(x1); .set offset,1968 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_518:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1972(x1); .set offset,1972 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_519:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1976(x1); .set offset,1976 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_520:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1980(x1); .set offset,1980 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_521:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1984(x1); .set offset,1984 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_522:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1988(x1); .set offset,1988 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_523:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1992(x1); .set offset,1992 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_524:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,1996(x1); .set offset,1996 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_525:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2000(x1); .set offset,2000 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_526:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2004(x1); .set offset,2004 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_527:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2008(x1); .set offset,2008 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_528:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2012(x1); .set offset,2012 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_529:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2016(x1); .set offset,2016 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_530:


; .option push; .option norvc; li x10,((0x33333333) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2020(x1); .set offset,2020 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_531:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2024(x1); .set offset,2024 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_532:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2028(x1); .set offset,2028 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_533:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2032(x1); .set offset,2032 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_534:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2036(x1); .set offset,2036 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_535:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2040(x1); .set offset,2040 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_536:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x555) | (-(((-0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,2044(x1); .set offset,2044 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;
; .option push; .option norvc; la x1,signature_x1_1; .option pop;; .set offset,0;

inst_537:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x556) | (-(((0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,0(x1); .set offset,0 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_538:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x4) | (-(((0x4) >> 11) & 1) << 11));; .if 0 == 1; sw x11,4(x1); .set offset,4 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_539:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2c) | (-(((0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,8(x1); .set offset,8 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_540:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x0) | (-(((0x0) >> 11) & 1) << 11));; .if 0 == 1; sw x11,12(x1); .set offset,12 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_541:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x665) | (-(((0x665) >> 11) & 1) << 11));; .if 0 == 1; sw x11,16(x1); .set offset,16 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_542:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x332) | (-(((0x332) >> 11) & 1) << 11));; .if 0 == 1; sw x11,20(x1); .set offset,20 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_543:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x554) | (-(((0x554) >> 11) & 1) << 11));; .if 0 == 1; sw x11,24(x1); .set offset,24 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_544:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2) | (-(((0x2) >> 11) & 1) << 11));; .if 0 == 1; sw x11,28(x1); .set offset,28 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_545:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2d) | (-(((0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,32(x1); .set offset,32 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_546:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2d) | (-(((-0x2d) >> 11) & 1) << 11));; .if 0 == 1; sw x11,36(x1); .set offset,36 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_547:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x666) | (-(((0x666) >> 11) & 1) << 11));; .if 0 == 1; sw x11,40(x1); .set offset,40 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_548:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x333) | (-(((0x333) >> 11) & 1) << 11));; .if 0 == 1; sw x11,44(x1); .set offset,44 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_549:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x5) | (-(((0x5) >> 11) & 1) << 11));; .if 0 == 1; sw x11,48(x1); .set offset,48 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_550:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x556) | (-(((-0x556) >> 11) & 1) << 11));; .if 0 == 1; sw x11,52(x1); .set offset,52 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_551:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,56(x1); .set offset,56 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_552:


; .option push; .option norvc; li x10,((0x5) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x3) | (-(((0x3) >> 11) & 1) << 11));; .if 0 == 1; sw x11,60(x1); .set offset,60 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_553:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x2e) | (-(((0x2e) >> 11) & 1) << 11));; .if 0 == 1; sw x11,64(x1); .set offset,64 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_554:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((-0x2c) | (-(((-0x2c) >> 11) & 1) << 11));; .if 0 == 1; sw x11,68(x1); .set offset,68 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_555:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x667) | (-(((0x667) >> 11) & 1) << 11));; .if 0 == 1; sw x11,72(x1); .set offset,72 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_556:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x334) | (-(((0x334) >> 11) & 1) << 11));; .if 0 == 1; sw x11,76(x1); .set offset,76 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_557:


; .option push; .option norvc; li x10,((-0x55555556) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x6) | (-(((0x6) >> 11) & 1) << 11));; .if 0 == 1; sw x11,80(x1); .set offset,80 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_558:


; .option push; .option norvc; li x10,((-0x10000001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x10) | (-(((0x10) >> 11) & 1) << 11));; .if 0 == 1; sw x11,84(x1); .set offset,84 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;

inst_559:


; .option push; .option norvc; li x10,((-0x2001) & ((1 << (32 - 1) << 1) - 1)); .option pop;; addi x11, x10, ((0x555) | (-(((0x555) >> 11) & 1) << 11));; .if 0 == 1; sw x11,88(x1); .set offset,88 +4; .endif; .if 0 == 0; sw x11,offset(x1); .set offset,offset+4; .endif;;



RVTEST_CODE_END


RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

.align 4; .global begin_signature; begin_signature:


signature_x20_0:
    .fill 0*(32/32),4,0xdeadbeef


signature_x20_1:
    .fill 25*(32/32),4,0xdeadbeef


signature_x1_0:
    .fill 512*(32/32),4,0xdeadbeef


signature_x1_1:
    .fill 23*(32/32),4,0xdeadbeef
# 2880 "tests/addi-01.S"
.global end_signature; end_signature:
