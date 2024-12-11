# Advanced C 🔠
<details><summary>UNIT 1: COMPILER AND MARCO</summary>
<p>

## UNIT 1: COMPILER AND MACRO
### **Quá trình biên dịch**

Quá trình biên dịch bao gồm nhiều giai đoạn chuyển đổi từ ngôn ngữ bậc cao sang ngôn ngữ mà máy tính có thể hiểu được (machine code).

#### **Có 4 giai đoạn**

1. **Tiền xử lý (Preprocessor)**
2. **Biên dịch (Compiler)**
3. **Hợp ngữ (Assembler)**
4. **Liên kết (Linker)**

| Giai đoạn  | Input     | Output      |
| ---------- | --------- | ----------- |
| Tiền xử lý | File `.c` | File `.i`   |
| Biên dịch  | File `.i` | File `.s`   |
| Hợp ngữ    | File `.s` | File `.o`   |
| Liên kết   | File `.o` | File `.exe` |

---

### **1. Quá trình tiền xử lý (Preprocessor)**

Quá trình này xử lý các lệnh tiền xử lý trong file `.c`.

#### **Các công việc của Preprocessor:**

- Xử lý các lệnh tiền xử lý (#include, #define, #ifndef,...).
- Thay thế các macro bằng giá trị đã định nghĩa.
- Chèn nội dung các file header (`.h`) vào chương trình.
- Loại bỏ các comments.

#### **Lệnh thực hiện:**

```bash
gcc -E file.c -o file.i
```

#### **Các lệnh Preprocessor quan trọng:**

1. **#include**

   - Chỉ thị bao hàm tệp, chèn nội dung các file vào mã nguồn.
     - `<library_name>`: Thư viện chuẩn, tìm trong thư mục cài IDE.
     - `"library_name"`: Tìm trong thư mục hiện tại.

2. **#define**

   - Chỉ thị định nghĩa macro.
     ```c
     #define PI 3.14
     ```

3. **#undef**

   - Hủy macro đã định nghĩa trước đó.
     ```c
     #undef PI
     ```

4. **#if, #elif, #else**

   - Kiểm tra điều kiện với macro.

5. **#ifdef, #ifndef**

   - **#ifdef**: Kiểm tra nếu macro đã định nghĩa.
   - **#ifndef**: Kiểm tra nếu macro chưa được định nghĩa (hay dùng để viết thư viện).

6. **Toán tử Preprocessor:**

   - `##`: Nối chuỗi.
   - `#`: Chuyển đoạn văn bản thành chuỗi.
   - **Variadic Macro**:
     - `...`: Biểu diễn tham số không xác định.
     - `__VA_ARGS__`: Lấy tham số từ `...`.

---

### **2. Quá trình biên dịch (Compiler)**

Biên dịch mã trong file `.i` sang file ngôn ngữ hợp ngữ (`.s`).

#### **Lệnh thực hiện:**

```bash
gcc -S file.i -o file.s
```

---

### **3. Quá trình hợp ngữ (Assembler)**

Chuyển file hợp ngữ (`.s`) sang file đối tượng (`.o`).

#### **Lệnh thực hiện:**

```bash
gcc -c file.s -o file.o
```

---

### **4. Quá trình liên kết (Linker)**

Liên kết các file đối tượng (`.o`) lại thành file thi hành (`.exe`).

#### **Lệnh thực hiện:**

```bash
gcc file1.o file2.o -o main.exe
```

---

### **Tổng hợp các lệnh GCC trong quá trình biên dịch:**

1. Tiền xử lý:

   ```bash
   gcc -E file.c -o file.i
   ```

2. Biên dịch:

   ```bash
   gcc -S file.i -o file.s
   ```

3. Hợp ngữ:

   ```bash
   gcc -c file.s -o file.o
   ```

4. Liên kết:

   ```bash
   gcc file

   ```

---
</p>
</details>

<details><summary>UNIT 2: STDARG - ASSERT</summary>
<p>
   
## UNIT 2: STDARG - ASSERT
### **Thư viện stdarg**

Thư viện `stdarg` tương tự macro variadic, được sử dụng để thao tác với các hàm có số lượng tham số không xác định (như `printf` và `scanf`).

#### **Các thành phần quan trọng:**

1. **`va_list`**
   - `va_list` là một typedef cho con trỏ kiểu `char*`=> va_list args = char* args
     ```c
     va_list args;
     ```

2. **`va_start`**
   - Macro để khởi tạo `va_list`.
     ```c
     va_start(args, l); // l là tên 1 biến
     ```
     va_start thực hiện so sánh `l` với từng chuỗi. Khi so sánh xong thì nó tách chuối
phía sau ra rồi lưu vào 1 mảng kí tự.

3. **`va_arg`**
   - Lấy từng tham số từ `va_list`.
     ```c
     int value = va_arg(args, int);
     ```
    va_arg lấy từng kí tự đã tách từ va_start ép kiểu mình muốn
4. **`va_end`**
   - Thu hồi con trỏ `va_list`.
     ```c
     va_end(args);
     ```

5. **`va_copy`**
   - Sao chép trạng thái của một `va_list` trước đó.
     ```c
     va_copy(va_list args1, va_list args2);
     ```

---

### **Thư viện assert**

Cung cấp macro `assert` để kiểm tra điều kiện trong khi chạy chương trình. 

- **Hoạt động:** điều kiện đúng, tiếp tục chạy. Điều kiện sai, dừng ngay lập tức

- **Dùng trong:** debug.

#### **Ví dụ:**

```c
#include <stdio.h>
#include <assert.h>

#define LOG(condition, cmd) assert(condition && #cmd)

int main(int argc, char const *argv[])
{
    int x = 10;

    //assert(x == 5 && "x phair bằng 5");
    LOG(x == 5, x phai bang 5);
    printf("x = %d", x);

    return 0;
}

```
</p>
</details>


<details><summary>UNIT 3: BITMASK</summary>
<p>

## Bitmask trong Lập Trình

Bitmask là kỹ thuật dùng bit để lưu trữ và thao tác với các cờ hoặc trạng thái, tối ưu bộ nhớ khi khai báo biến.

### Kiểu Dữ Liệu Chuẩn cho Bitmask

Dùng thư viện `stdint.h` để khai báo các kiểu dữ liệu theo độ rộng như sau:

- **`int32_t`**, **`uint32_t`**: 4 byte (32 bit).
- **`int8_t`**, **`uint8_t`**: 1 byte (8 bit).
- **`int16_t`**, **`uint16_t`**: 2 byte (16 bit).

### Khái Niệm Bitmask

Bitmask là kỹ thuật dùng 1 biến để lưu trữ nhiều trạng thái hoặc cờ:

#### Ví dụ:

```c
uint8_t user; // 0bxxxx xxxx
// Bit 0: Giới tính
// Bit 1: Trạng thái
// Bit 2: Xe máy
...

uint8_t PORT_C;
// Bit 0: Pin_0
// Bit 1: Pin_1
...
// Bit 8: Pin_8
```
1 PORT của MCU có thể hiểu là 1 biến.
Thay vì dùng nhiều biến, ta chỉ cần 1 biến duy nhất.

### Toán Tử Bitwise

- **And (`&`)**: Giống như nhân số tự nhiên.
- **Or (`|`)**: Giống cộng số tự nhiên.
- **Xor (`^`)**: Giống bằng 0, khác bằng 1.
- **Not (`~`)**: Đảo ngược bit.
- **Shift Left (`<<`)**: Dịch bit sang trái, thêm bit 0 ở bên phải.
- **Shift Right (`>>`)**: Dịch bit sang phải, thêm bit 0 ở bên trái.

![Untitled](https://github.com/user-attachments/assets/dade2ae4-3f3c-4e4c-9c6b-03a99c962a7a)


#### Ví dụ:

```c
uint8_t A = 0b11010110;
uint8_t B = 0b10101001;

~A    = 0b00101001;
A & B = 0b10000000;
A | B = 0b11111111;
A ^ B = 0b01111111;
```

#### Dịch Bit:

```c
uint8_t x = 0b00001111;
x << 2; // Kết quả: 0b00111100
x >> 1; // Kết quả: 0b00000111
```

### Định Nghĩa Bitmask trong Code

### Khai báo Bitmask:

```c
#define GENDER        (1 << 0)  // Bit 0: Giới tính (0 = Nữ, 1 = Nam)
#define TSHIRT        (1 << 1)  // Bit 1: Áo thun (0 = Không, 1 = Có)
#define HAT           (1 << 2)  // Bit 2: Nón (0 = Không, 1 = Có)
#define SHOES         (1 << 3)  // Bit 3: Giày (0 = Không, 1 = Có)
```

### Bật/Tắt Cờ:

```c
void enableFeature(uint8_t *features, uint8_t feature) {
    *features |= feature; // Bật cờ
}

void disableFeature(uint8_t *features, uint8_t feature) {
    *features &= ~feature; // Tắt cờ
}
```

### Kiểm Tra Trạng Thái:

```c
int isFeatureEnabled(uint8_t features, uint8_t feature) {
    return (features & feature) != 0; // Kiểm tra cờ
}
```

### Liệt Kê Các Trạng Thái:

```c
void listSelectedFeatures(uint8_t features) {
    if (features & GENDER) {
        printf("- Gender\n");
    }
    if (features & TSHIRT) {
        printf("- T-Shirt\n");
    }
    if (features & HAT) {
        printf("- Hat\n");
    }
    if (features & SHOES) {
        printf("- Shoes\n");
    }
}
```

## Đoạn Code Mẫu Hoàn Chỉnh:

```c
#include <stdio.h>
#include <stdint.h>

#define GENDER        (1 << 0)
#define TSHIRT        (1 << 1)
#define HAT           (1 << 2)
#define SHOES         (1 << 3)

void enableFeature(uint8_t *features, uint8_t feature) {
    *features |= feature;
}

void disableFeature(uint8_t *features, uint8_t feature) {
    *features &= ~feature;
}

int isFeatureEnabled(uint8_t features, uint8_t feature) {
    return (features & feature) != 0;
}

void listSelectedFeatures(uint8_t features) {
    printf("Selected Features:\n");
    for (int i = 0; i < 8; i++) {
        if ((features >> i) & 1) {
            printf("- Feature %d\n", i);
        }
    }
}

int main() {
    uint8_t options = 0;

    enableFeature(&options, GENDER | TSHIRT | HAT);
    disableFeature(&options, TSHIRT);

    if (isFeatureEnabled(options, HAT)) {
        printf("Hat is enabled\n");
    }

    listSelectedFeatures(options);

    return 0;
}
```



</p>
</details>

<details><summary>UNIT 4: POINTER</summary>
<p>
   
## Unit 4: Pointer

Pointer (con trỏ) là một biến đặc biệt lưu trữ địa chỉ của một đối tượng khác (biến, mảng, hàm).

### Nguyên lý hoạt động:
- Khi khai báo một biến, bộ nhớ RAM sẽ cấp phát địa chỉ lưu giá trị.
- Con trỏ được cấp phát địa chỉ, nhưng thay vì lưu giá trị, nó lưu địa chỉ khác.
- Toán tử `*` (giải tham chiếu) dùng để lấy giá trị tại địa chỉ của con trỏ.
- Kiểu dữ liệu quy định cách truy xuất dữ liệu.

VD: int (4 byte) thì đọc 4 ô nhớ đầu trong 8 ô, byte thấp nhất lưu ở ô nhớ đầu tiên:

```plaintext
int a = 5 // 0b 00000000 00000000 00000000 00000101
0x01      0x02      0x03      0x04      ... 0x08
00000101 00000000  00000000  00000000     00000000
```

Float = Sign (1 bit) + Exponent (8 bit) + Mantissa (23 bit)  
Double = Sign (1 bit) + Exponent (11 bit) + Mantissa (52 bit)


### Kích thước con trỏ:
- Phụ thuộc vào kiến trúc hệ thống:
  - Hệ điều hành 64 bit: con trỏ = 8 byte.
  - MCU STM32 (32 bit): con trỏ = 4 byte.
  - MCU STM8 (8 bit): con trỏ = 1 byte.

### Các loại con trỏ:

#### 1. Void Pointer (Con trỏ kiểu void):
- Trỏ đến bất kỳ địa chỉ nào.
- Tiết kiệm bộ nhớ nhưng cần ép kiểu khi truy xuất.
- Để lưu trữ được, cần giống kiểu trả về và tham số:
  
```c
void *ptr_name;
```

#### 2. Pointer to Function (Con trỏ hàm):
- Là biến giữ địa chỉ của hàm.
- Có thể truyền hàm như đối số cho hàm khác.

```c
<return_type> (*pointer_name)(<data_type_1>, <data_type_2>);
```

VD:
```c
void sum(int a, int b);
void (*func_ptr)(int, int) = sum;
```

#### 3. Pointer to Constant (Con trỏ hằng):
- Con trỏ chỉ đọc giá trị tại địa chỉ mà nó trỏ tới, không thay đổi giá trị tại địa chỉ đó.

```c
const int *ptr_name;
int const *ptr_name;
```

#### 4. Constant Pointer (Hằng con trỏ):
- Không thay đổi địa chỉ trỏ tới.
- Đọc và ghi giá trị tại địa chỉ trỏ tới.

```c
int *const ptr_name;
```
- Ứng dụng: Đọc dữ liệu mà không thay đổi.


#### 5. Null Pointer (Con trỏ Null):
- Là con trỏ không trỏ tới đối tượng hay địa chỉ nào.
- Nên gán `NULL` khi khai báo con trỏ mới hoặc sau khi dùng xong.

#### 6. Pointer to Pointer:
- Con trỏ cấp n chứa địa chỉ con trỏ cấp n-1.

VD:
```c
int test = 5;
int *ptr = &test;
int **pt2 = &ptr;
```





</p>
</details>

<details><summary>UNIT 5: STORAGE CLASSES</summary>
<p>


</p>
</details>

<details><summary>UNIT 6: STRUCT - UNION</summary>
<p>


</p>
</details>

<details><summary>UNIT 7: GOTO - SETJMP</summary>
<p>


</p>
</details>

<details><summary>UNIT 8: MEMORY LAYOUT</summary>
<p>


</p>
</details>

<details><summary>UNIT 9: STACK - QUEUE</summary>
<p>


</p>
</details>

<details><summary>UNIT 10: LINKED LIST</summary>
<p>


</p>
</details>

<details><summary>UNIT 11: JSON</summary>
<p>


</p>
</details>
