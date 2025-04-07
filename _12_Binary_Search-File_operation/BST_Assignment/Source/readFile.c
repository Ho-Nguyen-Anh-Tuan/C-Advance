#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../Include/readFile.h"
#include "../Include/list.h"


static void trimLeadingSpaces(char *str) {
    int index = 0;

    // Bỏ qua các ký tự space ở đầu chuỗi
    while (str[index] == ' ') {
        index++;
    }

    // Dịch chuỗi sang trái để loại bỏ các ký tự space
    if (index > 0) {
        int i = 0;
        while (str[index] != '\0') {
            str[i++] = str[index++];
        }
        str[i] = '\0'; // Kết thúc chuỗi
    }
}


static void parseLine(char *line, Infor *user) // John Doe, 30, 123 Main St, 555-1234
{
    // biến lưu thông tin tách được
    char *token = NULL;

    // tách tên
    token = strtok(line, ",");  // John Doe
    user->name = strdup(token);

    // tách tuổi
    token = strtok(NULL, ",");  // "30"
    user->age = atoi(token);

    // tách địa chỉ
    token = strtok(NULL, ",");  // 123 Main St
    user->address = strdup(token);

    // tách sdt
    token = strtok(NULL, ",");  // 555-1234
    trimLeadingSpaces(token);   // xử lý khoảng trắng đầu
    user->phoneNumber = strdup(token);

}

LinkedList *readCSV(char *file_path)
{
    FILE *file = fopen(file_path, "r");
    if(file == NULL)
    {
        perror("Lỗi khi mở tệp");
        printf("Đường dẫn tệp: %s\n", file_path);
        return NULL;
    }
    printf("Đã mở file: %s\n\n", file_path);

    // mảng chứa 1 dòng từ CSV
    char line[100];

    // bỏ qua tiêu đề
    fgets(line, sizeof(line), file); // Name, Age, Address, Phone Number

    // con trỏ quản lý linked list 
    LinkedList *result = (LinkedList*)malloc(sizeof(LinkedList));
    result->sortByName = NULL;
    result->sortByPhone = NULL;

    while (fgets(line, sizeof(line), file))
    {
        line[strcspn(line, "\n")] = '\0'; // xóa ký tự xuống dòng ở cuối dòng

        // biến tạm lưu thông tin user ở 1 dòng
        Infor user;

        // tách 1 dòng từ file và lưu vào user
        parseLine(line, &user);

        // thêm user vào linked list
        add_nodeByName( &(result->sortByName), user);
        add_nodeByPhone(&(result->sortByPhone), user);
    }

    // đóng file sau khi mở
    fclose(file);

    return result;
}





