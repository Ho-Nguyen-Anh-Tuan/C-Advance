#include <stdio.h>

int main(int argc, char const *argv[])
{
    int test = 5;

    int *ptr = &test;

    // printf("Địa chỉ của test: %p\n", &test);
    // printf("Địa chỉ của test từ pointer: %p\n", ptr);

    // printf("giá trị biến test: %d\n", test);
    // printf("giá trị của test từ pointer: %d\n", *ptr);  // dereference

    ptr = NULL;         // Con trỏ c1
    printf("địa chỉ con trỏ NULL: %p\n", ptr);

    ptr = &test;            

    int **ptr2 = &ptr;  // Con trỏ c2 chứa địa chỉ con trỏ c1

    /*  ptr = &test = 0x01
        *ptr = *0x01= 5
    
        ptp = &ptr = 0xf1
        *ptr2 = *0xf1 = 0x01
        **ptr2 = **0xf1 = *0x01 = 5
    */
    printf("địa chỉ của test: %p\n", &test);
    printf("địa chỉ của test: %p\n", ptr);
    printf("địa chỉ của test: %p\n", *ptr2);

    printf("giá trị của test: %d\n", test);
    printf("giá trị của test: %d\n", *ptr);
    printf("giá trị của test: %d\n", **ptr2);


    return 0;
}
