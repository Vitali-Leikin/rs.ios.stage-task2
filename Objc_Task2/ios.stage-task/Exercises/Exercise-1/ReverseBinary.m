#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    int  r = 0;
    int  byte_len = 8;

    while (byte_len--) {
        r = (r << 1) | (n & 1);
        n >>= 1;
    }
    return r;
}
