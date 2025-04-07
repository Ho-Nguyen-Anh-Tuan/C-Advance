#include "../Include/search.h"
#include "../Include/list.h"
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>


static TreeNode *buildTree(User_Node *head, int start, int end)
{
    if (head == NULL || start > end)
        return NULL;

    int mid = (start + end) / 2;
    User_Node *node = head;
    for (size_t i = start; i < mid; i++)
    {
        if (node->next == NULL)
            break;
        node = node->next;
    }

    TreeNode *root = (TreeNode*)malloc(sizeof(TreeNode));

    if (root == NULL)
    {
        printf("Khong the tao tree node\n");
        return NULL;
    }

    root->user.name = node->information.name;
    root->user.age = node->information.age;
    root->user.address = node->information.address;
    root->user.phoneNumber = node->information.phoneNumber;

    root->left = buildTree(head, start, mid - 1);
    root->right = buildTree(node->next, mid + 1, end);

    return root;
}

TreeNode *Certainpoint(User_Node *head)
{
    int lenght = 0;
    User_Node *node = head;
    while (node != NULL)
    {
        node = node->next;
        ++lenght;
    }

    return buildTree(head, 0, lenght - 1);
}

TreeNode *selectBSTType(LinkedList *linkedList, const char *input)
{
    if(isdigit(input[0]))
    {
        print_User_linkedList(linkedList->sortByPhone);
        printf("--------------------------------------------------\n");
        printf("Build BST theo số điện thoại....\n");
        printf("----------------------------------\n");
        return Certainpoint(linkedList->sortByPhone);
    }
    else if (isalpha(input[0]))
    {
        print_User_linkedList(linkedList->sortByName);
        printf("--------------------------------------------------\n");
        printf("Build BST theo tên....\n");
        printf("----------------------------------\n");
        return Certainpoint(linkedList->sortByName);
    }
    else
    {
        printf("Kí tự đầu không hợp lệ\n");
        return NULL;
    }
    
}

TreeNode *binarySearch(TreeNode *root, const char *name_or_phone)
{
    static int loop = 0;
    loop++;
    printf("số lần lặp: %d\n", loop);

    if(isalpha(name_or_phone[0]))
    {
        if (root == NULL)
        return NULL;

        if(stringCompare(root->user.name, name_or_phone) == 0)
            return root;
        
        else if(stringCompare(name_or_phone, root->user.name) > 0)
            return binarySearch(root->right, name_or_phone);
        
        else return binarySearch(root->left, name_or_phone);
    } 
    else
    {
        if (root == NULL)
            return NULL;

        if(stringCompare(root->user.phoneNumber, name_or_phone) == 0)
            return root;
        
        else if(stringCompare(name_or_phone, root->user.phoneNumber) > 0)
            return binarySearch(root->right, name_or_phone);
        
        else return binarySearch(root->left, name_or_phone);
    }
    
}

void freeTreeNode(TreeNode *root)
{
    if (root == NULL)
    {
        return;
    }

    // free các trường trong struct Infor
    free(root->user.name);
    free(root->user.address);
    free(root->user.phoneNumber);

    free(root);
}

void freeBST(TreeNode *root)
{
    if (root = NULL)
    {
        return;
    }

    freeBST(root->left);

    freeBST(root->right);

    freeTreeNode(root);    
}