#ifndef SEARCH_H
#define SEARCH_H

#include "../Include/list.h"


typedef struct TreeNode
{
    Infor user; // thông tin người dùng
    struct TreeNode *left;
    struct TreeNode *right;  
} TreeNode;

// xây dựng cây tìm kiếm nhị phân
static TreeNode *buildTree(User_Node *head, int start, int end);

// tạo cây tìm kiếm nhị phân từ linked list
TreeNode *Certainpoint(User_Node *head);

// hàm dựa theo giá trị input mà build BST phù hợp
TreeNode *selectBSTType(LinkedList *linkedList, const char *input);

// tìm kiếm trong cây nhị phân theo tên hoặc sdt
TreeNode *binarySearch(TreeNode *root, const char *name_or_phone);

// free 1 node tree
void freeTreeNode(TreeNode *root);

// free 1 BST
void freeBST(TreeNode *root);


#endif // SEARCH_H