#ifndef _COMPLIANCE_MODEL_H
#define _COMPLIANCE_MODEL_H

#define XLEN 32
#define TEST_CASE_1
#define ROM_MEM_SIZE 1073741824

#define RVMODEL_BOOT

// Test to see if a specific test has passed or not.
#define RVMODEL_IO_ASSERT_GPR_EQ(_SP, _R, _I)

#define RVMODEL_HALT\
  li ra, 0x8000000;\
  jr ra;

// The .align 10 ensures that the signature ends frame (1024 bytes) boundary.
#define RVMODEL_DATA_BEGIN                                              \
  .align 10; .global begin_signature; begin_signature:

#define RVMODEL_DATA_END                                                      \
  .global end_signature; end_signature:                             \

#define RVMODEL_SET_MSW_INT
#define RVMODEL_CLEAR_MSW_INT
#define RVMODEL_CLEAR_MTIMER_INT
#define RVMODEL_CLEAR_MEXT_INT

#endif // _COMPLIANCE_MODEL_H

