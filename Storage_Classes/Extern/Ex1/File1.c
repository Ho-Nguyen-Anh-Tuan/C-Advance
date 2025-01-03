#include <stdio.h>

int var_global = 17;

void display()
{
    printf("%d", var_global);
}

int main()
{
    display();
    return 0;
}
