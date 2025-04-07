#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main(int argc, char const *argv[])
{
    //uint16_t *ptr = NULL;

    int size;
    scanf("%d", &size);

    uint16_t *ptr = (uint16_t*)malloc(size * sizeof(uint16_t));

    for (int i = 0; i < size; i++){
        ptr[i] = 2*i;
    }
    printf("addr of ptr: %p\n", &ptr);

    for (int i = 0; i < size; i++){
        printf("addr %d: %p - value: %d\n", i, ptr + i, *(ptr + i));
    }

    ptr = (uint16_t*)realloc(ptr, 0 * sizeof(uint16_t));
    // /* cách thu hồi thứ 2 
    // vì = 0 nên ở lần cấp phát tiếp theo compiler
    // vẫn lấy được các vùng nhớ này*/
    // for (int i = 0; i < 10; i++){
    //     ptr[i] = 0;
    // }

    printf("--------------------------\n");
    
    printf("addr of ptr: %p\n", &ptr);
    for (int i = 0; i < size; i++){
        printf("addr %d: %p - value: %d\n", i, ptr + i, *(ptr + i));
    }

    free(ptr);
    ptr = NULL;

    return 0;
}
