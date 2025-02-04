#include <stdio.h>
#include "LinearQueue.h"


int main(int argc, char const *argv[])
{
    LinearQueue linearQ;

    int size = 5;
    InitializeLiQ(&linearQ, size);
    printf("Khi vừa khởi tạo: Front %d Rear %d\n", linearQ.front, linearQ.rear);

    EnqueueLiQ(&linearQ, 1);
    EnqueueLiQ(&linearQ, 2);
    EnqueueLiQ(&linearQ, 3);
    EnqueueLiQ(&linearQ, 4);
    EnqueueLiQ(&linearQ, 5);

    displayLiQ(linearQ);

    printf("Sau khi Enqueue: Front %d Rear %d\n", linearQ.front, linearQ.rear);
    printf("data at Front: %d - data at Rear %d\n", FrontDataLiQ(linearQ), RearDataLiQ(linearQ));

    printf("\n");

    printf("Dequeue %d\n", DequeueLiQ(&linearQ));
    printf("Dequeue %d\n", DequeueLiQ(&linearQ));
    printf("Dequeue %d\n", DequeueLiQ(&linearQ));

    displayLiQ(linearQ);

    printf("Sau khi Enqueue: Front %d Rear %d\n", linearQ.front, linearQ.rear);
    printf("data at Front: %d - data at Rear %d\n", FrontDataLiQ(linearQ), RearDataLiQ(linearQ));

    printf("thêm data 10 vào queue...\n");
    EnqueueLiQ(&linearQ, 10);

    displayLiQ(linearQ);


    return 0;
}