#include <stdio.h>
#include <unistd.h>
#include "Motor.h"
#include "Sensor.h"

int main(int argc, char const *argv[])
{
    Sensor_Init();
    Motor_Init;

    while (1)
    {
        // Đọc giá trị cảm biến
        sensorValue = Sensor_Read();

        // Điều khiển động cơ dựa trên giá trị cảm biến
        Motor_control(sensorValue);

        // delay 2s
        sleep(2);   // usleep(2); 2us
    }
    

    return 0;
}

// gcc main.c Motor.c Sensor.c -o main