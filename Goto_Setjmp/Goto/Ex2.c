#include <stdio.h>

int main(int argc, char const *argv[])
{
    while (1){
        for (int i = 0; i < 10; i++){
            for (int j = 0; j < 10; j++){
                if (j == 5){
                    goto exit;
                    printf("%d\n", j);
                }
            }
        }
    }
    exit:
    printf("The end\n");

    return 0;
}
