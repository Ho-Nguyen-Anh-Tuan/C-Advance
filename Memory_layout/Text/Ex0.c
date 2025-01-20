#include <stdio.h>



char *ptr = "Hello World";  // "Hello World": rdata - test. Ko thể thay đổi trực tiếp chuỗi hằng bằng pointer


const int a = 0;    // window: rdata (read-only data) - macOS: test

int main(int argc, char const *argv[])
{
    printf("%d\n", a);
    //a = 20;

    ptr[1] ='o';
    printf("string: %s\n", ptr);

    return 0;
}
