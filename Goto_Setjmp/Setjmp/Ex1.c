#include <stdio.h>
#include <setjmp.h>

jmp_buf buf;

int exception;

void display(){
    printf("Yhahallo\n");
    
}

int main(int argc, char const *argv[])
{
    exception = setjmp(buf);    // 0x000A, lần đầu -> trả về 0

    if(!exception){
        printf("Exception lần 1: %d\n", exception);
    } else {
        printf("Exception: %d\n", exception);
    }


    longjmp(buf, 2);

    return 0;
}
