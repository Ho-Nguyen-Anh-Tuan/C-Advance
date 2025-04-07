#ifndef SENSOR_H
#define SENSOR_H

#include <stdint.h>

// lưu gía trị cảm biến
extern uint16_t sensorValue;

// Khởi tạo cảm biến
void Sensor_Init(void);

// Đọc dữ liệu cảm biến
uint16_t Sensor_Read(void);

#endif