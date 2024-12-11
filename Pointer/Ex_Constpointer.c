#include <stdio.h>

int value1 = 17;
int value2 = 25;
int *const const_ptr = &value1; // Hằng con trỏ trỏ đến địa chỉ value1

int main(int argc, char const *argv[])
{
    printf("địa chỉ con trỏ: %p\n", const_ptr);
    printf("giải tham chiếu con trỏ: %d\n", *const_ptr);

    *const_ptr = 5;
    printf("Sau khi đổi giá trị\n");
    printf("địa chỉ con trỏ: %p\n", const_ptr);
    printf("giải tham chiếu con trỏ: %d\n", *const_ptr);

    // const_ptr = &value2; // Error: assignment of read-only variable 'const_ptr'

    return 0;
}

