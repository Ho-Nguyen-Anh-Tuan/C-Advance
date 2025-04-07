#include <stdio.h>

void sum(int a, int b){
    printf("%d + %d = %d\n", a, b, a+b);
}

void subtract(int a, int b){
    printf("%d - %d = %d\n", a, b, a-b);
}

void multiple(int a, int b){
    printf("%d * %d = %d\n", a, b, a*b);
}

void divide(int a, int b){
    printf("%d / %d = %d\n", a, b, a/b);
}

void caculate(void (*pheptoan)(int, int), int a, int b){
    pheptoan(a, b);
}

int main(int argc, char const *argv[])
{
    int a = 10, b = 20;

    // Cách 1: dungf con trỏ hàm gọi phép toán
    void (*ptr)(int, int);
    ptr = sum;
    (*ptr)(a, b);   // cách gọi 1

    ptr = subtract;
    ptr(a, b);      // cách gọi 2

    ptr = multiple;
    ptr(a, b);

    ptr = divide;
    ptr(a, b);


    // // Cách 2: gọi phép toán qua hàm tính toán
    caculate(sum, a, b);
    caculate(subtract, a, b);
    caculate(multiple, a, b);
    caculate(divide, a, b);
    

    // Cách 3: Dùng mảng con trỏ hàm gọi phép toán
    void (*caculate[])(int, int) = {sum, subtract, multiple, divide};
    caculate[0](a, b);
    caculate[1](a, b);
    caculate[2](a, b);
    caculate[3](a, b);


    return 0;
}
