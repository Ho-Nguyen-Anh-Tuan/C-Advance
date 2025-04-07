#include <stdio.h>
#include "calculation.h"

int main(int argc, char const *argv[])
{
    Nghiem nghiem;

    nghiem = giaiPTB2(1, 2, -3);

    printf("x1 = %0.3f, x2 = %0.3f", nghiem.x1, nghiem.x2);

    return 0;
}
