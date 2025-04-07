#include "../Include/list.h"

int stringCompare(const char *str1, const char *str2)
{
    while(*str1 && (*str1 == *str2))
    {
        str1++;
        str2++;
    }

    return *(const unsigned char*)str1 - *(const unsigned char*)str2;
}

void add_nodeByName(User_Node **head, Infor new_user)
{
    User_Node *new_node = (User_Node*)malloc(sizeof(User_Node));

    if (new_node == NULL)
    {
        printf("Memory allocation failed\n");
        return;
    }

    // thêm tên vào node
    new_node->information.name = strdup(new_user.name);

    // thêm tuổi vào node
    new_node->information.age = new_user.age;

    // thêm địa chỉ vào node
    new_node->information.address = strdup(new_user.address);

    // thêm sdt vào node
    new_node->information.phoneNumber = strdup(new_user.phoneNumber);

    new_node->next = NULL;

    // trường hợp là node đầu tiên hoặc name của node mới < name node đầu
    if(*head == NULL || stringCompare(new_user.name, (*head)->information.name) < 0)
    {
        new_node->next  = *head;
        *head = new_node;
        return;
    }

    // trường hợp còn lại
    User_Node *current = *head;
    while (current->next != NULL && stringCompare(new_user.name, current->next->information.name) > 0)
    {
       current = current->next;
    }

    new_node->next = current->next;
    current->next = new_node;
    
}

void add_nodeByPhone(User_Node **head, Infor new_user)
{
    User_Node *new_node = (User_Node*)malloc(sizeof(User_Node));

    if (new_node == NULL)
    {
        printf("Memory allocation failed\n");
        return;
    }
   
    // thêm tên vào node
    new_node->information.name = strdup(new_user.name);

    // thêm tuổi vào node
    new_node->information.age = new_user.age;

    // thêm địa chỉ vào node
    new_node->information.address = strdup(new_user.address);

    // thêm sdt vào node
    new_node->information.phoneNumber = strdup(new_user.phoneNumber);

    new_node->next = NULL;

    // trường hợp là node đầu tiên hoặc name của node mới < name node đầu
    if(*head == NULL || stringCompare(new_user.phoneNumber, (*head)->information.phoneNumber) < 0)
    {
        new_node->next  = *head;
        *head = new_node;
        return;
    }

    // trường hợp còn lại
    User_Node *current = *head;
    while (current->next != NULL && stringCompare(new_user.phoneNumber, current->next->information.phoneNumber) > 0)
    {
       current = current->next;
    }

    new_node->next = current->next;
    current->next = new_node;
    
}

void print_User_linkedList(User_Node *head)
{
    if(head == NULL)
    {
        printf("Không thể in linked list vì nó rỗng\n");
        return;
    }

    printf("Danh sách người dùng:\n");
    printf("%-20s %-5s\t %-20s\t %-15s\n", "Tên", "Tuổi", "Địa chỉ", "Số điện thoại");
    printf("---------------------------------------------------------------------------------------\n");

    while (head != NULL)
    {
        printf("%-20s %-5d\t %-20s\t %-15s\n", 
            head->information.name, 
            head->information.age, 
            head->information.address, 
            head->information.phoneNumber
        );
        head = head->next;
    }
    printf("\n");
}

void freeUserNodeList(User_Node **head) 
{
    User_Node *current = *head;
    User_Node *nextNode = NULL;

    while (current != NULL) {
        nextNode = current->next;

        // Giải phóng các trường cấp phát động trong struct Infor
        free(current->information.name);
        free(current->information.address);
        free(current->information.phoneNumber);

        // Giải phóng node hiện tại
        free(current);

        current = nextNode;
    }

    *head = NULL;
}

void freeLinkedList(LinkedList **linkedList)
{
    if (*linkedList == NULL)
    {
        printf("Không có gì để free trong linkedList!\n");
        return;
    }

    freeUserNodeList( &((*linkedList)->sortByName));
    freeUserNodeList( &((*linkedList)->sortByPhone));
    
    free(*linkedList);
    *linkedList = NULL;
}


