#ifndef MOTOR_H
#define MOTOR_H

#include <stdint.h>

// Khởi tạo motor
void Motor_Init(void);

// Điều khiển motor theo cảm biến
void Motor_control(uint16_t sensorValue);

#endif