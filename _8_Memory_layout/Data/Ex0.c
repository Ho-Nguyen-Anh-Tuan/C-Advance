#include <stdio.h>

int a = 13;     // data

static double b = 17;  // data

void *ptr = &b;     // data

void test(){
    static int c = 7;   // data
}

int main(int argc, char const *argv[])
{
    /* code */
    return 0;
}
