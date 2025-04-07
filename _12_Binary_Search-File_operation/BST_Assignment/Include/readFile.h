#ifndef READFILE_H
#define READFILE_H

#include "../Include/list.h"

// Hàm loại bỏ ký tự space ở đầu chuỗi
static void trimLeadingSpaces(char *str);

/* hàm tách 1 dòng từ file csv và lưu vào struct Infor
dòng csv có định dạng: Name, Age, Address, Phone Number */
static void parseLine(char *line, Infor *user);

/* hàm trả về 1 struct linked list
    1 là sortByName
    2 là sortbyPhone */
LinkedList *readCSV(char *file_path);

#endif // READFILE_H