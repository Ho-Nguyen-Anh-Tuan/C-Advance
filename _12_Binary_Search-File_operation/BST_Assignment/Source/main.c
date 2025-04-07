#include <stdio.h>
#include "../Include/readFile.h"
#include "../Include/list.h"
#include "../Include/search.h"
#include <ctype.h>

#define PATH "../DataBase/information.csv"


int main(int argc, char const *argv[])
{
    // tạo 2 linked list: byPhone và byName
    LinkedList *linkedList = readCSV(PATH);
    if (linkedList == NULL) {
        printf("Không thể tạo danh sách liên kết.\n");
        return 1;
    }

    // nhập giá trị tìm kiếm
    char input[50];
    printf("Nhập tên hoặc số điện thoại cần tìm: ");
    fgets(input, sizeof(input), stdin);
    input[strcspn(input, "\n")] = '\0'; // Xóa ký tự newline nếu có

    // tạo cây tìm kiếm nhị phận dựa trên giá trị tìm kiếm
    TreeNode *root = selectBSTType(linkedList, input);
    if(root == NULL)
    {
        printf("Không thể tạo cây nhị phân\n");
        return 1;
    }
    
    // in kết quả
    TreeNode *result = binarySearch(root, input);
    if(result != NULL)
    {
        printf("----------Đã tìm thấy người dùng!!!----------\n");
        printf("Tên: %s\n", result->user.name);
        printf("Tuổi: %d\n", result->user.age);
        printf("Địa chỉ: %s\n", result->user.address);
        printf("Số điện thoại: %s\n", result->user.phoneNumber);
    }
    else
    {
        printf("Không tìm thấy thông tin người dùng\n");
    }

    // giải phóng linked list, bst
    freeLinkedList(&linkedList);
    freeBST(root);
    root = NULL;
    


    return 0;
}