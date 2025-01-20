#include <stdio.h>

typedef struct
{
    int x;
    int y;
} Point_Data;

Point_Data p1 = {5, 0}; // p1, x, y: data. Dù y = 0 nhưng p1 ở data nên y cũng ở data

Point_Data p2;          // p2, x, y: bss

Point_Data p3 = {0, 0}; // p3, x, y: bss

int a = 0;  // bss
int b = 5;  // data

static int m = 0;   // bss
static int n;       // bss

int *ptr = NULL;

void test(){
    static int c = 1;   // data
    static int d;       // bss
    static int e = 0;   // bss
}


void funcA(){
    static int x = 0;   // bss
    printf("addr of x(A): %p\n", &x);
    printf("%d\n", x);
}

void funcB(){
    static int x = 0;   // bss
    printf("addr of x(B): %p\n", &x);
    printf("%d\n", x);
}

int main(int argc, char const *argv[])
{
    //printf("a: %d\n", a);
    funcA();
    funcB();

    return 0;
}
