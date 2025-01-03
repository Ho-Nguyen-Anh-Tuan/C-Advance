#include <stdio.h>
#include "Sensor.h"

// lưu gía trị cảm biến
uint16_t sensorValue = 0;

// Khởi tạo cảm biến
void Sensor_Init(void)
{
    printf("Sensor initialized.\n");
}

// Đọc dữ liệu cảm biến
uint16_t Sensor_Read(void)
{
    sensorValue = (sensorValue + 10) % 100; // giá trị từ 0-99
    printf("Sensor value: %d\n", sensorValue);
    return sensorValue;
}