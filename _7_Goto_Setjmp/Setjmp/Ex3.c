#include <stdio.h>
#include <setjmp.h>

jmp_buf buf;

int exception;

typedef enum
{
    NO_ERROR,
    NO_EXIST,
    DIVIDE_BY_0
} ErrorCodes;

#define TRY if ((exception = setjmp(buf)) == 0)
#define CATCH(x)  else if (exception == x)
#define THROW(x) longjmp(buf, x)

double divide(int a, int b){
    if (a == 0 && b == 0){
        THROW(1);
    }
    else if (b == 0){
        THROW(2);
    }

    return (double) a / b;
}

int main(int argc, char const *argv[])
{
    // int a, b;
    // scanf("%d %d", &a, &b);

    exception = NO_ERROR;

    TRY{
        printf("Ket qua: %.3f\n", divide(0, 0));
    }
    CATCH(NO_EXIST){
        printf("ERROR! Không tồn tại\n");
    }
    CATCH(DIVIDE_BY_0){
        printf("ERROR! Chia cho 0\n");
    }

    // thêm code chương trình ở đây

    return 0;
}