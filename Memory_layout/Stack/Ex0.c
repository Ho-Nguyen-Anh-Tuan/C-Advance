#include <stdio.h>

int *ptr = NULL;

int total (int a, int b)
{
    const int x = 5;
    ptr = &x;
    *ptr = 17;
    printf("x = %d\n", x);

    int c = a + b;
    printf("a: %p b: %p c: %p\n", &a, &b, &c);
    return c;
}

int main(int argc, char const *argv[])
{
    printf("%d\n", total(3, 9));
    printf("%d\n", total(12, 5));

    return 0;
}
