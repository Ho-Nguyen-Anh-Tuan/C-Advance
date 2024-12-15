#include <stdio.h>
#include <stdarg.h>

#define tong(...) sum(__VA_ARGS__, 0)

int sum(int count, ...){ 
    va_list args;   

    va_start(args, count);  

    int result = count;
    int value;
    
    //      va_arg(args, int) != 0      va_arg = 1
    //      result += va_arg(args, int) call again thì nó bằng -1 => sai
    while((value = va_arg(args, int)) != 0){    // so sánh kiểu int vs 0
        result += value;
    }


    va_end(args);

    return result;
}

int main(int argc, char const *argv[])
{
    printf("Tong = %d\n", tong(3, 1, -1, 2, 33, 4, 5));
    return 0;
}


 