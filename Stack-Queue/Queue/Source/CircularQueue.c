#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "CircularQueue.h"


void InitializeCirQ(CircularQueue *queue, int size){
    queue->item = (int*)malloc(size * sizeof(int));
    queue->size = size;
    queue->front = queue->rear = -1;
}

bool isFullCirQ(CircularQueue queue){
    return ((queue.rear + 1) % queue.size == queue.front);
}

bool isEmptyCirQ(CircularQueue queue){
    return (queue.front == -1);
}

void EnqueueCirQ(CircularQueue *queue, int data){
    if (isFullCirQ(*queue)){
        printf("Queue is full~\n");
    } else {
        if (isEmptyCirQ(*queue)){
            queue->front = queue->rear = 0;
        } else {
            queue->rear = (queue->rear + 1) % queue->size;
        }
        queue->item[queue->rear] = data;
        printf("Enqueue data: %d\n", queue->item[queue->rear]);
    }
}

int DequeueCirQ(CircularQueue *queue){
    if (isEmptyCirQ(*queue)){
        printf("Queue is empty~\n");
        return -1;
    } else {
        int dequeue_value = queue->item[queue->front];
        queue->item[queue->front] = 0;
        if (queue->front == queue->rear){
            queue->front = queue->rear = -1;
        } else {
            queue->front = (queue->front + 1) % queue->size;
        }
        return dequeue_value;
    }
}

int FrontDataCirQ(CircularQueue queue){
    return queue.item[queue.front];
}

int RearDataCirQ(CircularQueue queue){
    return queue.item[queue.rear];
}