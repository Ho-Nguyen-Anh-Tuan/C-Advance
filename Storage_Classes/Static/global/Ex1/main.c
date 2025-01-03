#include <stdio.h>

extern int a;

extern void display();

extern void test();

int main(int argc, char const *argv[])
{
    printf("a = %d\n", a);

    display();

    test();

    return 0;
}
