#include "compliance_test.h"
#include "compliance_io.h"
#include "test_macros.h"

RV_COMPLIANCE_RV32M

RV_COMPLIANCE_CODE_BEGIN
    la a1,test_results
    li a4, 0xf0774453522a1063
    li a7, 0xb370bd7dd2d6b642
    bmatxor t6,a4,a7
    sd t6,0(a1)
    li a7, 0xedd116c18a671b8c
    li s5, 0x6f94f8db5b4289cf
    bmatxor a3,a7,s5
    sd a3,8(a1)
    li a6, 0x8130cd0d02eb0801
    li t5, 0x36ecfc1781920806
    bmatxor s4,a6,t5
    sd s4,16(a1)
    li a7, 0x1f9f61e943737b61
    li a4, 0xb320deb657861f11
    bmatxor t5,a7,a4
    sd t5,24(a1)
    li a2, 0x915695b3f20d8a82
    li s6, 0xbda8a08e1ceb0c11
    bmatxor a0,a2,s6
    sd a0,32(a1)
    li s11, 0x925c6cb79543c51a
    li t5, 0xe79ad1779a48a02c
    bmatxor s10,s11,t5
    sd s10,40(a1)
    RV_COMPLIANCE_HALT
RV_COMPLIANCE_CODE_END

.data
RV_COMPLIANCE_DATA_BEGIN
test_results:
.fill 6,8,-1
RV_COMPLIANCE_DATA_END
