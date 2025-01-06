#include <stdio.h>

extern int var_global;

extern void display();

int main(int argc, char const *argv[])
{
    display();
    return 0;
}
