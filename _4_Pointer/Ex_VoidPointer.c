#include <stdio.h>
#include <stdlib.h>

int sum(int a, int b)
{
    return a+b;
}

int main() {
   
    char array[] = "Hello";
    int value = 5;
    double test = 15.7;
    char letter = 'A';
   
    void *ptr = &value;
    printf("value is: %d\n", *(int*)(ptr)); // ta cần ép kiểu con trỏ void về kiểu int để nó biết dc cần đọc 4 byte trong byte

    ptr = &test;
    printf("value is: %f\n", *(double*)(ptr));

    ptr = &letter;
    printf("value is: %c\n", *(char*)(ptr));

    printf("---------------------------------------------------------\n");

    // Khai báo mảng con trỏ void
    void *ptrArray[] = {&value, &test, &letter, array};

    printf("ptr[0] = %d\n", *(int*) ptrArray[0]);
    printf("ptr[1] = %f\n", *(double*) ptrArray[1]);
    printf("ptr[2] = %c\n", *(char*) ptrArray[2]);

    // Truy cập chuỗi
    //printf("value: %c\n", *((char*)ptrArray[3] + 1));
    for(int i = 0; i < sizeof(array) / sizeof(array[0]); i++){  
        printf("%c", *((char*)ptrArray[3] + i));
    }

    return 0;
}
