#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>


typedef struct
{
    int *item;  // mảng lưu trữ phần tử
    int size;   // số lượng
    int top;    // chỉ số đỉnh stack
} Stack;

// khởi tạo stack
void Initialaze(Stack *stack_, int size_)
{
    stack_->size = size_;
    stack_->item = (int*)malloc(size_ * sizeof(int));
    stack_->top = -1;
}

// check stack full
bool isFull(Stack stack)
{
    return stack.top == (stack.size - 1);
}

// check stack empty
bool isEmpty(Stack stack)
{
    return stack.top == -1;
}

// thêm phần tử
void Push(Stack *stack, int data)
{
    if (isFull(*stack)){
        printf("Stack is full!\n");
    } else {
        stack->item[++stack->top] = data;
    }
}

// xóa phần tử và trả về giá trị top
int Pop(Stack *stack)
{
    if (isEmpty(*stack)){
        printf("Stack is empty!\n");
        return -1;
    }
    
    return stack->item[stack->top--];
}
 
// đọc giá trị dỉnh stack
int Peek(Stack stack)
{
    if (isEmpty(stack)){
        return -1;
    }

    return stack.item[stack.top];
}

void display(Stack stack)
{
    for (int i = 0; i < stack.size; i++){
        printf("data: %d - addr: %p\n", stack.item[i], &stack.item[i]);
    }
}

int main(int argc, char const *argv[])
{
    Stack stack;

    int size = 5;
    Initialaze(&stack, size);

    printf("Data của stack khi chưa Push\n");
    display(stack);

    printf("Push process!!!\n");
    Push(&stack, 1);
    Push(&stack, 2);
    Push(&stack, 3);
    Push(&stack, 4);
    Push(&stack, 5);
    Push(&stack, 6);

    display(stack);
    printf("data at top: %d\n", Peek(stack));

    printf("\n");

    printf("Pop process!!!\n");
    for (int i = 0; i < stack.size; i++){
        printf("data at top: %d - addr: %p\n", Peek(stack), &stack.item[stack.top]);
        Pop(&stack);
    }

    printf("\n");

    printf("Data của stack sau khi Pop\n");
    display(stack);
    printf("data at top: %d - addr: %p\n", Peek(stack), &stack.item[stack.top]);

    free(stack.item);

    return 0;
}
