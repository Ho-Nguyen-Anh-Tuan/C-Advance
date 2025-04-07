#include <stdio.h>
#include <stdlib.h>
#include "../Header/random.h"
#include "../Header/bubbleSort.h"
#include "../Header/binarySearch.h"


int main(int argc, char const *argv[])
{
    int n = 10000, x;
   
    int *arr = (int*)malloc(n * sizeof(int));

    generateRandom(arr, n);
    // display(arr, n);

    printf("Nhập giá trị cần tìm: "); scanf("%d", &x);

    bubbleSort(arr, n);
    display(arr, n);

    printf("\n");

    printf("Tìm thấy %d ở arr[%d]", x, binarySearch(arr, n, x));

    free(arr);


    return 0;
}