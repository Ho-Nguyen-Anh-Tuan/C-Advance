#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct Node
{
    int data;
    struct Node *next;
} Node;

// khởi tạo 1 node
Node* createNode(int data)
{
    Node *newNode = (Node*)malloc(sizeof(Node));

    // kiểm tra cấp phát thành công hay không
    if (newNode){   
        newNode->data = data;
        newNode->next = NULL;
    }

    return newNode;
}

// kiểm tra node rỗng
bool isEmpty(Node *first)
{
    if (first == NULL){
        printf("Linked list is empty\n");
        return true;
    }
    return false;
}

// lấy kích thước của list
int size(Node *first)
{
    if (isEmpty(first)){
        return 0;
    }

    int i = 1;
    while (first->next != NULL)
    {
        first = first->next;
        ++i;
    }
    
    return i;
}

// thêm node mới ở phía sau
void push_back(Node **first, int data)
{
    Node *newNode = createNode(data);

    if (*first == NULL){
        *first = newNode; 
    }

    Node *tmp = *first;
    while (tmp->next != NULL){
        tmp = tmp->next; 
    }

    tmp->next = newNode;
}

// thêm node mới phía trước
void push_front(Node **first, int data)
{
    Node *newNode = createNode(data);

    if (*first == NULL){
        *first = newNode;
    } else {
        newNode->next = *first;
        *first = newNode;
    }
}

// thêm node ở vị trí bất kì
void insert(Node **first, int data, int index)
{
    Node *newNode = createNode(data);

    if (newNode == NULL){
        printf("Không thể thêm Node\n");
        return;
    }

    // chèn vào đầu hoặc index <= 0
    if (*first == NULL || index <= 0){
        newNode->next = *first;
        *first = newNode;
        return;
    }

    Node *current = *first;
    int i = 0;
    while (current->next != NULL && i < index - 1){
        current = current->next;
        ++i;
    }

    // trường hợp mà index hơn số node hiện tại
    if (current == NULL){
        current = *first;

        while (current->next != NULL){
            current = current->next;
        }
        current->next = newNode;
    } else {
        newNode->next = current->next;
        current->next = newNode;
    }
}

// xóa node đầu tiên
void pop_front(Node **first)
{
    if (isEmpty(*first)){
        printf("không có node để xóa\n");
        return;
    }

    Node *current = *first;
    *first = (*first)->next;
    free(current);
}

// xóa node cuối
void pop_back(Node **first) 
{
    // trường hợp list rỗng
    if (isEmpty(*first)){
        return;
    }

    // trường hợp chỉ có 1 node
    else if ((*first)->next == NULL){
        free(*first);
        *first = NULL;
        return;
    }

    // có nhiều node
    Node *current = *first;

    while(current->next->next != NULL){
        current = current->next;
    }

    free(current->next);
    current->next = NULL;
}

// xóa node bất kì
void delete_list(Node **first, int index)
{
    // list trống
    if (isEmpty(*first)){
        return;
    }

    // index = 0 
    else if ((*first)->next == NULL){
        Node *tmp = *first;
        (*first) = (*first)->next;
        free(tmp); 
        return;
    }

    Node *current = *first;
    Node *tmp = NULL;
    int k = 0;
    
    while (current->next->next != NULL && k < index - 1){
        current = current->next;
        ++k;
    }

    tmp = current->next->next;
    free(current->next);
    current->next = tmp;
}

// lấy data của node đầu
int front(Node *first)
{
    return isEmpty(first) ? 0 : first->data;
}

// lấy data của node cuối
int back(Node *first)
{
    if (isEmpty(first)){
        return 0;
    }

    while (first->next != NULL){
        first = first->next;
    }

    return first->data;
}

// lấy data node bất kì
int get(Node *first, int index)
{
    if (isEmpty(first)){
        return 0;
    }

    int k = 0;
    while (first->next != NULL && k < index){
        first = first->next;
        ++k;
    }

    if (index > k){
        printf("Error: List has less element\n");
        return 0;
    }

    return first->data;
}

void display(Node *first)
{
    if (isEmpty(first)){
        return;
    }

    int i = 0;
    while (first != NULL)
    {
        printf("Node %d: %d\n", i, first->data);
        first = first->next;
        i++;
    }
}

int main(int argc, char const *argv[])
{
    Node *first  = createNode(1);   // first = 0x01, &first = 0x03
    Node *second = createNode(2);   // 0x05
    Node *third  = createNode(3);   // 0xff

    first->next = second;
    second->next = third;

    // Node *first = NULL;

    push_back(&first, 4);
    push_back(&first, 5);

    printf("\n");
    display(first);

    push_front(&first, 15);
    push_front(&first, 20);

    printf("\n");
    display(first);

    insert(&first, 30, 3);
    insert(&first, 27, 1);

    printf("\n");
    display(first);    

    delete_list(&first, 3);
    delete_list(&first, 1);
    
    printf("\n");
    display(first);
    printf("Size of list: %d\n", size(first));    

    pop_front(&first);
    pop_back(&first);

    printf("\n");
    display(first);   


    printf("data: %d\n", get(first, 5));
    printf("data: %d\n", get(first, 1));
    printf("data: %d\n", get(first, 3));
    printf("Size of list: %d\n", size(first));
    


    return 0;
}


