#include <stdio.h>
#include <assert.h>

#define LOG(condition, cmd) assert(condition && #cmd)

int main(int argc, char const *argv[])
{
    int x = 10;

    //assert(x == 5 && "x phair bằng 5");
    LOG(x == 5, x phai bang 5);
    printf("x = %d", x);

    return 0;
}
