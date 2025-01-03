#include <stdio.h>
#include "File1.h"

static int a = 10;  // 0x01

int b = 20;

static void display()
{
    printf("This is File1.c\n");
    int *ptr = &a;
}

void test()
{
    printf("Hello world\n");
}