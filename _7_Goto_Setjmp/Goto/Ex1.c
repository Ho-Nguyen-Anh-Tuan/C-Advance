#include <stdio.h>

int main(int argc, char const *argv[])
{
    int x = 1;  // 0x0000   PC - program counter 
    int y = 2;  // 0x0008
    int a = 3;

    printf("Hello\n");
    goto GoHome;
    printf("Nice to meet you\n");
    GoHome:
    printf("bye\n");

    return 0;
}

