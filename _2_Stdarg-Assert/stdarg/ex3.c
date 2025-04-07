#include <stdio.h>
#include <stdarg.h>

#define tong(...) sum(__VA_ARGS__, 'a') 

int sum(int count, ...){ 
    va_list args;
    va_list check;   

    va_start(args, count);  
    va_copy(check, args);

    int result = count;
    
    while(va_arg(check, char*) != (char*) 'a'){
        result += va_arg(args, int);
    }


    va_end(args);   // va_end 1 trong 2

    return result;
}

int main(int argc, char const *argv[])
{
    printf("Tong = %d\n", tong(3, 0, -1, 2, 33, 4, 5));
    return 0;
}


 