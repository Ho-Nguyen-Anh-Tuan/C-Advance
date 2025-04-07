#include <stdio.h>
#include <setjmp.h>

jmp_buf buf;

int exception;

double divide(int a, int b){
    if (a == 0 && b == 0){
        longjmp(buf, 1);
    } else if (b == 0){
        longjmp(buf, 2);
    }

    return (double) a / b;
}

int main(int argc, char const *argv[])
{
    int a, b;
    scanf("%d %d", &a, &b);

    if ((exception = setjmp(buf)) == 0){
        printf("Ket qua: %.3f\n", divide(a, b));
    }
    else if (exception == 1){
        printf("ERROR! Không tồn tại\n");
    }
    else if (exception == 2){
        printf("ERROR! Chia cho 0\n");
    }

    // thêm code chương trìn h ở đây

    return 0;
}
