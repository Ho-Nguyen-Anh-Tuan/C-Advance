#include <stdio.h>
#include <stdarg.h>

void test (int count, ...)
{
    va_list args;
    // args = 1, 2, 4.67, 'a', "hello_ae"

    va_start(args, count);

    printf("value 1: %d\n", va_arg(args, int));
    printf("value 2: %d\n", va_arg(args, int));
    printf("value 3: %f\n", va_arg(args, double));
    printf("value 4: %c\n", va_arg(args, char*));
    printf("value 5: %s\n", va_arg(args, char*));

    va_end(args);
}

int main(int argc, char const *argv[])
{
    test(5, 1, 2, 4.67, 'a', "hello_ae");

    return 0;
}
