#include <stdio.h>

int value1 = 10;
int value2 = 3;
const int *ptr_const = &value1;

int main(int argc, char const *argv[])
{
    printf("địa chỉ con trỏ: %p\n", ptr_const);
    printf("gía trị khi trỏ value1: %d\n", *ptr_const);

    printf("----------------------------------------------------\n");
    /*ptr_const = 10; ERROR: chỉ đọc giá trị của value1, không thể thay đổi giá trị qua dereference */

    value1 = 5;
    printf("địa chỉ con trỏ: %p\n", ptr_const);
    printf("gía trị khi value1 thay đổi: %d\n", *ptr_const);

    printf("----------------------------------------------------\n");

    // Vẫn trỏ tới biến khác bình thường
    ptr_const = &value2;
    printf("địa chỉ con trỏ: %p\n", ptr_const);
    printf("giá trị trỏ tới value2: %d\n", *ptr_const);

    return 0;
}
