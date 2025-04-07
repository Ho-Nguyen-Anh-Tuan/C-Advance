#ifndef CIRCULARQUEUE_H
#define CIRCULARQUEUE_H

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct 
{
    int *item;
    int size;
    int front, rear;
} CircularQueue;

// Hàm khởi tạo
void InitializeCirQ(CircularQueue *queue, int size);

// Kiểm tra Queue đầy
bool isFullCirQ(CircularQueue queue);

// Kiểm tra Queue rỗng
bool isEmptyCirQ(CircularQueue queue);

// Thêm 1 phần tử vào Queue
void EnqueueCirQ(CircularQueue *queue, int data);

// Xoá 1 phần tử vào Queue
int DequeueCirQ(CircularQueue *queue);

// Lấy giá trị ở front
int FrontDataCirQ(CircularQueue queue);

// Lấy giá trị ở rear
int RearDataCirQ(CircularQueue queue);

#endif // CIRCULARQUEUE_H
