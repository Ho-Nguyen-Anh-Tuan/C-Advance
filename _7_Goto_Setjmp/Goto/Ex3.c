#include <stdio.h>

int main(int argc, char const *argv[])
{
    Main:
    printf("---Main Menu---\n");
    printf("1. Menu 1\n");
    printf("2. Menu 2\n");
    printf("Press any number to exit.\n");

    int choice;
    printf("Enter your choice: ");
    scanf("%d", &choice);
    printf("\n");

    switch (choice)
    {
        case 1:
            goto menu_1;

        case 2:
            goto menu_2;

        default:
            goto exit_program;
    }

    menu_1:
        printf("---Menu 1---\n");
        printf("1. Do task 1\n");
        printf("2. Do task 2\n");
        printf("3. Menu 2\n");
        printf("0. Back to Main\n");

        EnterAgain_Menu1:
        printf("Enter your choice: ");
        scanf("%d", &choice);
        printf("\n");

        switch (choice)
        {
            case 1:
                printf("Done task 1\n");
                break;

            case 2:
                printf("Done task 2\n");
                break;
            case 3:
                goto menu_2;

            case 0:
                goto Main;

            default:
                printf("Invalid number, please enter again!\n");
                goto EnterAgain_Menu1;
        }

    menu_2:
        printf("---Menu 2---\n");
        printf("1. Do task 3\n");
        printf("2. Do task 4\n");
        printf("3. Menu 1\n");
        printf("0. Back to Main\n");

        EnterAgain_Menu2:
        printf("Enter your choice: ");
        scanf("%d", &choice);
        printf("\n");

        switch (choice)
        {
            case 1:
                printf("Done task 3\n");
                break;

            case 2:
                printf("Done task 4\n");
                break;
            case 3:
                goto menu_1;

            case 0:
                goto Main;

            default:
                printf("Invalid number, please enter again!\n");
                goto EnterAgain_Menu2;
        }    
    exit_program:

    return 0;
}
