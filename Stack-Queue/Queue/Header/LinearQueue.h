#ifndef LINEARQUEUE_H
#define LINEARQUEUE_H

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct {
    int *item;  // Mảng lưu trữ phần tử
    int size;   // Số lượng phần tử
    int front;  // Chỉ số phần tử đầu
    int rear;   // Chỉ số phần tử cuối
} LinearQueue;

// Khởi tạo queue
void InitializeLiQ(LinearQueue *queue, int size);

// Kiểm tra queue đầy
bool isFullLiQ(LinearQueue queue);

// Kiểm tra queue rỗng
bool isEmptyLiQ(LinearQueue queue);

// Thêm phần tử vào queue
void EnqueueLiQ(LinearQueue *queue, int data);

// Xóa phần tử khỏi queue
int DequeueLiQ(LinearQueue *queue);

// Lấy phần tử đầu queue
int FrontDataLiQ(LinearQueue queue);

// Lấy phần tử cuối queue
int RearDataLiQ(LinearQueue queue);

// Hiển thị queue
void displayLiQ(LinearQueue queue);

#endif // LINEARQUEUE_H
