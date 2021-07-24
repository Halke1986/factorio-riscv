int test();

void main() {
         test();
}

int test() {
        int a=1000,b=2000;
        return a+b;
}

int sltu(int rs1, int rs2){ // return 1 if rs1 < rs2
    int hi1 = rs1 & 0x80000000 // most significant bit, MSB
    int hi2 = rs2 & 0x80000000
    int lo1 = rs1 & 0x7FFFFFFF // 31 lower bits
    int lo2 = rs2 & 0x7FFFFFFF

    if hi1 > hi2 { // signed comparison
        return 1 // rs2 has MSB set, rs1 does not. rs1 is smaller.
    } else if hi1 < hi2 {
        return 0
    } else if lo1 < lo2 { // compare lower bits in case when inputs have the same MSB value
        return 1
    } else {
        return 0
    }
}

