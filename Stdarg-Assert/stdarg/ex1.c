#include <stdio.h>
#include <stdarg.h>

int sum(int count, ...){ //count: tham số cố định, tượng trưng số lượng tham số truyền vào
    va_list args;   // type char* va_list
                    // arrs = "int count, ..."             
                    // arrs = "int count, 6, 2, 3, 4, 5, 10, 15" các kí tự dc cấp phát address luư trữ
                    // 0xa0(i) 0xa1(n)... fact: , hay space cũng là kí tự

    va_start(args, count);  //arr[] = {'6', '2', '3',...}

    //va_arg(args, int); //(int)('6') -> 6

    int result = 0;

    printf("Tham số 1: %d\n", va_arg(args, int));
    printf("Tham số 2: %d\n", va_arg(args, int));
    printf("Tham số 3: %d\n", va_arg(args, int));

//     for(int i = 0; i < count; i++){
//         result += va_arg(args, int);
//    }


    va_end(args);

    return result;
}

int main(int argc, char const *argv[])
{
    printf("Tong = %d\n", sum(7,6,2,3,4,5,10,15));
    return 0;
}


