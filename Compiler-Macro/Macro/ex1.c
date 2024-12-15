#include <stdio.h>

#define SIZE 30

int arr[SIZE];

// # văn bản -> chuỗi
#define CREATE_FUNC(name, cmd)  \
void name() {                   \
    printf(#cmd);               \
}                         

// ## dùng để nối chuỗi 
#define CREATE_VAR(name)    \
int int_##name;             \
char char_##name;      

CREATE_FUNC(moshimoshi1, Hello\n);
CREATE_FUNC(moshimoshi2, konichiwa\n);
CREATE_FUNC(moshimoshi3, xin chao\n);

int main(int argc, char const *argv[])
{
    CREATE_VAR(test);

    moshimoshi1();
    moshimoshi2();
    moshimoshi3();

    printf("Size before change: %d\n", SIZE);

    #undef SIZE
    #define SIZE 17

    printf("Size after undef: %d", SIZE);

    return 0;
}
