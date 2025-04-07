#include <stdio.h>
#include <stdint.h>

typedef union
{                                   // scope
    uint8_t var1;   // 0x00 - 0x03  // 0 - 255          // 0x00         // 0x01 - 0x03: 3 padding
    uint32_t var2;                  // 0 - 4294967295   // 0x00 - 0x03  // 0 padding
    uint16_t var3;                  // 0 - 65535        // 0x00 - 0x01  // 0x02 - 0x03: 2 padding
} frame;

int main(int argc, char const *argv[])
{
    frame data;

    data.var2 = 429967290;  // 00011001 10100000 11000111 10111010

    // Lưu từ byte thấp nhất tăng dần
    // 0x00         0x01        0x02        0x03
    // 10111010     11000111    10100000    00011001

    printf("var1: %d\n", data.var1);    // 0x00: 10111010 = 186
    printf("var2: %u\n", data.var2); 
    printf("var3: %d\n", data.var3);    // 0x00 - 0x01: 11000111 10111010 = 51130

    return 0;
}
