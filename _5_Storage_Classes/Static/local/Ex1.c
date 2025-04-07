#include <stdio.h>

int *ptr = NULL;

void count()
{
    static int a = 0; // bss: 0xa1: 2
    ptr = &a;
    printf("address of a: %p\n", &a);
    printf("a = %d\n", ++a);
}

void Hieu()
{
    static int a = 5;
    ptr = &a;
    printf("address of a: %p\n", &a);
    printf("a = %d\n", --a);
}

int main(int argc, char const *argv[])
{
    count();    // a = 1
    count();    // a = 2
    *ptr = 99;
    count();    // a = 100

    printf("-------------------------------\n");

    Hieu();     // a = 4
    Hieu();     // a = 3
    *ptr = 100;
    Hieu();     // a = 99

    return 0;
}
