#include <stdio.h>
#include "Motor.h"

void Motor_Init(void)
{
    printf("Motor initialized.\n");
}

void Motor_control(uint16_t sensorValue)
{
    if (sensorValue < 50){
        printf("Motor: Speed low (value: %d)\n", sensorValue);
    } else {
        printf("Motor: Speed high (value: %d)\n", sensorValue);
    }
}