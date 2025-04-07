
// struct Point
// {
//     int x, y;
// };
// struct Point p1, p2;

/*
double (8 byte): 0x00, 0x08, 0x1f,...
int, int32_t, uint32_t (4 byte): 0x00, 0x04, 0x08,...
float, int16_t, uint16_t (2 byte): 0x00, 0x02, 0x04,...
char, int8_t, uint8_t (1 byte): 0x00, 0x01, 0x02,...
*/
#include <stdio.h>
#include <stdint.h>

typedef struct
{                       // cấp phát     sử dụng         // dư
    int var1;   // 4    // 0x00 - 0x07  // 0x00 - 0x03  // 0x04 - 0x07
    char var2;  // 1    //              // 0x04         // 0x05 - 0x07
    char var3;  // 1    //              // 0x05         // 0x06 - 0x07
    char var5;  // 1    //              // 0x06         // 0x07: 1 padding
    short var4; // 2    // 0x08 - 0x0f  // 0x08 - 0x09  // 0x0a - 0x0f: 6 padding
    double var6;// 8    // 0x10 - 0x17  
} Point;

typedef struct
{
    uint32_t var1;  // 4    // 0x00 - 0x03
    uint8_t var2;   // 1    // 0x04 - 0x07  dư 0x05 - 0x07
    uint16_t var3;  // 2    // 0x06 - 0x07  padding: 0x05
} frame;

typedef struct
{
    uint8_t var1[9];    // 1    // 9
    uint32_t var2[2];   // 4    // 8
    uint16_t var3[10];  // 2    // 20
} Frame;

int main(int argc, char const *argv[])
{
    // printf("Size of struct: %d\n", sizeof(Point));

    // Point p1;
    // frame v1;

    // printf("Addr of var1: %p\n", &p1.var1);
    // printf("Addr of var2: %p\n", &p1.var2);
    // printf("Addr of var3: %p\n", &p1.var3);
    // printf("Addr of var5: %p\n", &p1.var5);
    // printf("Addr of var4: %p\n", &p1.var4);

    // printf("Size of struct: %d\n", sizeof(frame));
    printf("Size of struct: %d\n", sizeof(Frame));


    return 0;
}

