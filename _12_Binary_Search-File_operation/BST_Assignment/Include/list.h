#ifndef LIST_H
#define LIST_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

// thong tin nguoi dung
typedef struct 
{
    char *name;
    uint8_t age;
    char *address;
    char *phoneNumber;
} Infor;

// cau truc node chua thong tin nguoi dung
typedef struct Node
{
    Infor information;
    struct Node *next;
} User_Node;

typedef struct
{
    User_Node *sortByName;
    User_Node *sortByPhone;
} LinkedList;

/*  hàm so sánh chuỗi
    return > 0 khi str1 > str2
    = 0 khi str1 = str2
    < 0 khi str1 < str2 */
int stringCompare(const char *str1, const char *str2);

// hàm tạo linked list sắp xêp theo tên tăng dần
void add_nodeByName(User_Node **head, Infor new_user);

// hàm tạo linked list sắp xêp theo số điện thoại tăng dần
void add_nodeByPhone(User_Node **head, Infor new_user);

// hàm in thông tin người dùng trong linked list
void print_User_linkedList(User_Node *head);

// hàm giải phóng linked list và đặt con trỏ quản lý = null
void freeUserNodeList(User_Node **head); 

/*  hàm giải phóng bộ nhớ cho 2 linked list, đồng thời đặt toàn bộ con trỏ
    liên quan thành NULL */ 
void freeLinkedList(LinkedList **linkedList);


#endif // LIST_H