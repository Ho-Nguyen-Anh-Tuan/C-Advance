#include <stdio.h>
#include <time.h>

int main(int argc, char const *argv[])
{
    // Lưu thời điểm bắt đầu
    clock_t start_time = clock();
    //register int i;
    int i;

    for (i = 0; i < 5000000; ++i){}

    // Lưu thời điểm kết thúc
    clock_t end_time = clock();

    // tính thời gian chạy = miligiay
    double time_taken = ((double)(end_time - start_time)) / CLOCKS_PER_SEC;

    printf("Thời gian chạy của chương trình: %f s\n", time_taken);

    return 0;
}
