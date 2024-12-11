#include <stdio.h>
void swap(int *a, int *b)   // oxb0 = &a: 0x01, oxb2 = &b: 0xa4
{
    int tmp = *a;
    *a = *b;
    *b = tmp;
}
int main()
{
   int a = 10, b = 20;  // 0x01: 10, 0xa4: 20
   swap(&a, &b);

   printf("value a is: %d\n", a);
   printf("value b is: %d\n", b);

    return 0;
}

//Ta dùng con trỏ cho hàm swap bởi vì ta muốn thao tác lên 2 biến a, b trong hàm main