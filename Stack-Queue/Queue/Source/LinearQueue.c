#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "LinearQueue.h"

void InitializeLiQ(LinearQueue *queue, int size)
{
    queue->size = size;
    queue->item = (int*)malloc(size * sizeof(int));
    queue->front = queue->rear = -1;
}

bool isFullLiQ(LinearQueue queue)
{
    return queue.rear == (queue.size - 1);
}

bool isEmptyLiQ(LinearQueue queue)
{
    return (queue.front == -1 || queue.front == (queue.rear + 1));
}

void EnqueueLiQ(LinearQueue *queue, int data)
{
    if (isFullLiQ(*queue)){
        printf("LinearQueue is full~~!\n");
    } else {
        if (queue->rear == -1){
            queue->front = queue->rear = 0;
        } else {
            ++queue->rear;
        }

        queue->item[queue->rear] = data;
        printf("\nEnqueue data %d\n", queue->item[queue->rear]);
    }
}

int DequeueLiQ(LinearQueue *queue)
{
    if (isEmptyLiQ(*queue)){
        printf("LinearQueue is empty~~~\n");
        return -1;
    } else {
        int dequeueValue = queue->item[queue->front];
        queue->item[queue->front++] = 0;
        if (queue->front > queue->rear && queue->rear == (queue->size - 1)){
            queue->front = queue->rear = -1;
        }
        return dequeueValue;
    }
}

int FrontDataLiQ(LinearQueue queue)
{
    if (isEmptyLiQ(queue)){
        printf("LinearQueue is empty.\n");
        return -1;
    } else {
        return queue.item[queue.front];
    } 
}

int RearDataLiQ(LinearQueue queue)
{
     if (isEmptyLiQ(queue)){
        printf("LinearQueue is empty.\n");
        return -1;
    } else {
        return queue.item[queue.rear];
    } 
}

void displayLiQ(LinearQueue queue)
{
    printf("\nDisplay process....\n");

    if (isEmptyLiQ(queue)){
        printf("Nothing to display\n");
    } else {
        printf("LinearQueue: \n");

        for (int i = queue.front; i <= queue.rear; i++){
            printf("data[%d] = %d\n", i, queue.item[i]);
        }
        printf("\n");
    }
}
