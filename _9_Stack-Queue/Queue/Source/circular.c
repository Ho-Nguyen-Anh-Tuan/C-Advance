#include <stdio.h>
#include "CircularQueue.h"

int main(int argc, char const *argv[])
{
    CircularQueue queue;

    int size = 3;
    InitializeCirQ(&queue, size);
    printf("Khi vừa khởi tạo: Front %d Rear %d\n", queue.front, queue.rear);

    EnqueueCirQ(&queue, 10);
    EnqueueCirQ(&queue, 20);
    EnqueueCirQ(&queue, 30);

    printf("Sau khi Enqueue: Front %d Rear %d\n", queue.front, queue.rear);
    printf("data at Front: %d - data at Rear %d\n", FrontDataCirQ(queue), RearDataCirQ(queue));

    printf("\n");

    printf("Dequeue %d\n", DequeueCirQ(&queue));
    printf("Dequeue %d\n", DequeueCirQ(&queue));

    printf("Sau khi Denqueue: Front %d Rear %d\n", queue.front, queue.rear);
    printf("data at Front: %d - data at Rear %d\n", FrontDataCirQ(queue), RearDataCirQ(queue));

    EnqueueCirQ(&queue, 100);
    printf("data at Front: %d - data at Rear %d\n", FrontDataCirQ(queue), RearDataCirQ(queue));



    return 0;
}
