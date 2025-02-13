# Advanced C 🔠
<details><summary>UNIT 1: COMPILER AND MARCO</summary>
<p>

## UNIT 1: COMPILER AND MACRO
### **Quá trình biên dịch (Compile time)**

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

## Unit 5: STORAGE CLASSES

### 1. Extern
- Cú pháp: `extern <data_type> <name_variable>`
- **Công dụng**: Dùng để sử dụng 1 biến khai báo trong file khác mà không cần include file định nghĩa biến.
- Khi dùng `extern`, **chỉ khai báo**, không định nghĩa lại giá trị hay nội dung.
- Khi liên kết file, dùng lệnh: `gcc file1.c file2.c -o main.exe`.
- Những biến và hàm nào muốn sử dụng trong file khác nên khai báo `extern` trong file header (.h).
- **Giới hạn**: Chỉ sử dụng cho biến toàn cục.

---

### 2. Static Local (Biến Static Cục Bộ)
- Khi khai báo `static`, biến sẽ không nằm trong stack mà chuyển sang vùng data hoặc bss.
- **Đặc điểm**:
  - Chỉ khởi tạo một lần duy nhất.
  - Phạm vi là cục bộ.
  - Giữ nguyên địa chỉ và giá trị sau khi hết phạm vi sử dụng.
  - Có thể dùng con trỏ để thay đổi giá trị.

---

### 3. Static Global (Biến Static Toàn Cục)
- **Đặc điểm**:
  - Giới hạn phạm vi của biến hoặc hàm trong file nguồn hiện tại.
  - File khác không thể truy cập biến, hàm đó ngay cả khi dùng `extern`.
  - Đảm bảo tính trừu tượng và bảo mật dữ liệu.

---

### 4. Register
- **Chức năng**:
  - Lưu trực tiếp biến trên thanh ghi thay vì RAM.
  - Tăng tốc độ chương trình.
- **Giới hạn**:
  - Chỉ sử dụng cho biến cục bộ.
  - Không khuyến khích dùng cho biến toàn cục do giảm tính linh hoạt của thanh ghi.
- **Ứng dụng**:
  - Dùng cho tính toán số học được truy xuất liên tục.

---

### 5. Volatile 
- **Chức năng**:
  - Ngăn trình biên dịch tối ưu hóa biến khi nhận thấy biến không thay đổi sau nhiều lần chạy.
  - Đảm bảo giá trị của biến được cập nhật liên tục từ các tác động ngoài (như ngắt hoặc thanh ghi).
- **Cách dùng**:
  - Thêm từ khoá `volatile` khi khai báo biến: `volatile <data_type> <variable_name>`.
- **Ứng dụng**:
  - Dùng khi biến thay đổi từ bên ngoài.

---



</p>
</details>

<details><summary>UNIT 6: STRUCT - UNION</summary>
<p>

## Unit 6: Struct - Union

### Struct

Struct là 1 kiểu dữ liệu tự định nghĩa, nghĩa là ta nhóm các dữ liệu khác nhau lại.

#### 2 cách tạo struct:

```c
struct Point
{
    int x, y;
};
struct Point p1, p2;

typedef struct
{
    int x, y;
} Point;
Point p1, p2;
```

Truy xuất dữ liệu: `.` hoặc `->`

#### Data Alignment

Các biến thành phần của struct được sắp xếp phù hợp theo yêu cầu căn chỉnh của CPU.
Các địa chỉ của biến thành viên struct *liền kề* với nhau. CPU quy định biến nằm ở địa chỉ bắt đầu chia hết cho **kích thước** của nó.

- double (8 byte): 0x00, 0x08, 0x1f, ...
- int, int32_t, uint32_t (4 byte): 0x00, 0x04, 0x08, ...
- float, int16_t, uint16_t (2 byte): 0x00, 0x02, 0x04, ...
- char, int8_t, uint8_t (1 byte): 0x00, 0x01, 0x02, ...

#### Data Padding: Byte trống

Nếu địa chỉ tiếp theo không chia hết cho biến đó, biến đó được cấp phát địa chỉ bắt đầu tiếp theo chia hết cho kích thước của nó.  

Mỗi lần cấp phát vùng địa chỉ, cpu sẽ dựa vào biến có kiểu dữ liệu **lớn nhất**.

##### Ví dụ:

```c
typedef struct
{
    int var1;   // 4 byte   // 0x00 - 0x03
    char var2;  // 1 byte   // 0x04         // dư 0x05 - 0x07
    char var3;  // 1 byte   // 0x05         // dư 0x06 - 0x07
    char var5;  // 1 byte   // 0x06         // dư 0x07
    short var4; // 2 byte   // 0x08 - 0x0b  // dư 0x0a - 0x0b
                // xài 9 byte. Dư 0x07, 0x0a, 0x0b gọi là padding
} Point;
```
#### Kích thước:  tổng kích thước của các dữ liệu thành phần và padding (nếu có).
#### Những thành phần có địa chỉ riêng biệt.

### Union

Union là 1 kiểu dữ liệu tự định nghĩa.

#### 2 cách tạo union giống struct:

Truy xuất dữ liệu: `.` hoặc `->`

#### Data Alignment:

Các biến được sắp xếp vào vùng nhớ đặc biệt, được căn chỉnh bởi CPU giống struct.

#### Data Padding:

Những thành phần ***dùng chung vùng nhớ***.

#### Kích thước:

Tổng kích thước thành phần lớn nhất + padding (nếu có).

### Ứng dụng Struct:
Sử dụng để viết thư viện.

### Ứng dụng kết hợp Struct và Union:

Lồng struct vào union để truyền dữ liệu, khai báo các biến thành viên struct `data` cùng kiểu dữ liệu để tránh padding.

Khi thêm giá trị vào các biến thành viên của `data`, mảng `frame` cũng nhận giá trị tương ứng.

#### Ví dụ:

```c
typedef union {
    struct {
        uint8_t id[2];
        uint8_t data[4];
        uint8_t check_sum[2];
    } data;

    uint8_t frame[8];

} Data_Frame;
```


</p>
</details>

<details><summary>UNIT 7: GOTO - SETJMP</summary>
<p>

## Unit 7: Goto - Setjmp.h

### Goto

`goto` là một từ khóa trong C cho phép nhảy đến một nhãn (label) đã đặt trước đó **trong cùng một hàm**.
- Label là một tên đặt trước dấu `:`.
- Khi chương trình gặp lệnh `goto label`, nó sẽ nhảy đến label và thực thi các lệnh từ đó.

```c
goto label;
...
label:
    // Dòng lệnh nhảy đến
```

- Địa chỉ để thực thi câu lệnh khác với địa chỉ cấp phát để khởi tạo biến; lệnh `goto` di chuyển thanh ghi PC đến label.

#### Ứng dụng
- Thoát khỏi nhiều vòng lặp trong 1 lần.
- Tạo menu.
- Quét LED.

---

### setjmp.h

Thư viện `setjmp.h` cung cấp 2 hàm `setjmp` và `longjmp`. Cả hai hàm này dùng để nhảy từ vị trí này sang vị trí khác trong chương trình, khác với `goto` là có thể nhảy sang hàm khác.

- **Hàm setjmp**:
  - Lưu lại vị trí hiện tại mà thanh ghi PC đang chỉ vào một biến kiểu `jmp_buf`.
  - Giá trị trả về lần đầu của `setjmp` là số 0.
  - Lần tiếp theo trả về số khác 0, phụ thuộc vào `longjmp`.

- **Hàm longjmp**:
  - Nhảy về vị trí `setjmp` và gửi giá trị ở tham số thứ 2 đến hàm `setjmp`.

#### Ứng dụng
- Xử lý lỗi.

---

### Khác biệt giữa setjmp và assert
- **assert**:
  - Đưa ra lỗi và dừng chương trình ngay lập tức.

- **setjmp**:
  - Đưa ra lỗi nhưng chương trình vẫn tiếp tục chạy.



</p>
</details>

<details><summary>UNIT 8: MEMORY LAYOUT</summary>
<p>

## Unit 8: MEMORY LAYOUT

Chương trình `.exe` (máy tính) hay `.hex` (vi điều khiển) lưu ở SSD hoặc Flash. Khi chạy thì copy sang RAM để chạy.
RAM cũng chia ra các phân vùng nhỏ hơn.

### Text segment (code segment)
- Mã máy: chứa tập hợp các lệnh thực thi (lệnh PC thực thi).
- Quyền truy cập: chỉ có quyền đọc và thực thi (_read only_).
- Compiler Clang:
  - Hằng số toàn cục.
  - Chuỗi hằng.

### Data segment (Initialized Data Segment)
- Chứa biến toàn cục được khởi tạo với **giá trị khác 0**.
- Chứa các biến static (global + local) được khởi tạo với _giá trị khác 0_.
- Quyền truy cập là _đọc và ghi_, tức là có thể đọc và thay đổi giá trị biến.
- Tất cả các biến sẽ được thu hồi sau khi chương trình kết thúc.
- Compiler MinGW (gcc, g++):
  - Hằng số toàn cục.
  - Chuỗi hằng.
  - Ở chế độ **Rdata**.

### Bss segment (Uninitialized Data Segment)
- Chứa biến toàn cục được khởi tạo với **giá trị bằng 0** hoặc **không gán giá trị**.
- Chứa các biến static (global + local) được khởi tạo với _giá trị bằng 0_ hoặc _không gán giá trị_.
- Quyền truy cập là _đọc và ghi_, tức là có thể đọc và thay đổi giá trị biến.
- Tất cả các biến sẽ được thu hồi sau khi chương trình kết thúc.

### Stack
- Chứa các biến cục bộ (trừ static cục bộ), tham số truyền vào.
- Hằng số cục bộ có thể thay đổi bằng con trỏ nhưng không nên thay đổi.
- Quyền truy cập: đọc và ghi.
- Sau khi ra khỏi hàm, sẽ thu hồi vùng nhớ (tự động).
- **Memory Leak:** khi đệ quy mà không có điểm dừng.

### Heap
Sử dụng để cấp phát động:
- **C:** `malloc()`, `calloc()`, `realloc()`, `free()`.
- **C++:** `new`, `delete`.

#### malloc()
- **Cú pháp:** `void* malloc(size_t size)`.
- Cấp phát vùng nhớ dựa theo kích thước chỉ định.
- kích thước chỉ định: phụ thuộc vào **số lượng phần tử** và **kiểu dữ liệu**.
- Phải dùng con trỏ để quản lý vùng nhớ được cấp phát và mặc định trỏ tới địa chỉ đầu tiên trong vùng nhớ.
- Địa chỉ con trỏ có thế nằm ở _stack/data/bss_, nhưng địa chỉ nó trỏ tới là **heap**.
- Kiểu tra về là `void*` nên cần **ép kiểu**.
- Giá trị khởi tạo cho từng byte địa chỉ là giá trị rác (không khởi tạo giá trị).
- Thu hồi thủ công (hàm `free()`) và đặt `pointer = NULL`.
- Nếu không thu hồi thì có thể không còn đủ địa chỉ để cấp phát (memory leak).

#### realloc()
- **Cú pháp:** `void* realloc(void *ptr, size_t new_size);`
- Thay đổi kích thước vùng nhớ đã được cấp phát bởi `malloc()` hoặc `calloc()`.
- Giữ dữ liệu cũ, phần mở rộng không khởi tạo.
- Thu hồi thủ công (hàm `free()`) và đặt `pointer = NULL`.

#### Thu hồi vùng nhớ cấp phát động
- `free()`.
- Sử dụng `realloc()` và gán giá trị các _địa chỉ = 0_.

## Bài tập: Calloc và điểm khác biệt so với malloc và realloc

### Calloc()
- Dùng để cấp phát động vùng nhớ dựa theo kích thước chỉ định đồng thời **gán giá trị các địa chỉ này bằng 0**.
- **Cú pháp:** `void* calloc(size_t num_elements, size_t element_size)`
  - `num_elements`: số lượng phần tử.
  - `element_size`: kích thước 1 phần tử (byte).
- Quản lý bằng con trỏ như `malloc`.
- Kiểu tra về là `void*` nên cần **ép kiểu**.
- Thu hồi thủ công (hàm `free()`).

## Điểm khác biệt malloc, calloc và realloc

**Khởi tạo giá trị:**
- `malloc`: ***không khởi tạo vùng nhớ***, dữ liệu trong bộ nhớ có thể chứa giá trị rác.
- `calloc`: ***có khởi tạo vùng nhớ*** bằng `0`.
- `realloc`: giữ nguyên giá trị cũ, giá trị mở rộng không khởi tạo.

**Cách cấp phát:**
- `malloc`: **1 khối liên tục** có kích thước `size` byte -> Ta phải tự tính toán kích thước.
  ```c
  int *ptr = (int *)malloc(5 * sizeof(int));  // Tự nhân số phần tử
  ```
- `calloc`: cấp phát **nhiều phần tử**, mỗi phần tử có kích thước `size` byte -> hệ thống tự tính kích thước.
  ```c
  int *ptr = (int *)calloc(5, sizeof(int));  // Không cần tự nhân
  ```
- `realloc`:
  1. Khi tăng kích thước:  
   - `realloc` cố gắng mở rộng bộ nhớ ngay tại vị trí hiện tại nếu có đủ không gian trống.  
   - Nếu không đủ không gian trống liền kề, nó sẽ cấp phát một vùng mới có kích thước lớn hơn, sao chép dữ liệu cũ sang vùng mới, rồi giải phóng vùng cũ.
  2. Khi giảm kích thước:
   - Nếu kích thước mới nhỏ hơn, bộ nhớ dư thừa sẽ bị "cắt bớt", nhưng địa chỉ con trỏ có thể không thay đổi.
  3. Khi kích thước bằng 0:
   - Nếu tham số kích thước mới là 0, `realloc` thường hoạt động như `free()`, giải phóng bộ nhớ và trả về NULL.



</p>
</details>

<details><summary>UNIT 9: STACK - QUEUE</summary>
<p>

## Unit 9: Stack - queue

### Stack
Stack (ngăn xếp) là 1 cấu trúc dữ liệu theo nguyên tắc **last in, first out**, nghĩa là phần tử cuối cùng thêm vào stack sẽ là phần tử đầu tiên lấy ra. 

#### **Các thao tác cơ bản:**
- **push** để thêm 1 phần tử vào đỉnh của stack: `push - > top++`.
- **pop** để xóa 1 phần tử ở đỉnh stack: `pop -> top--`.
- **peek/top** để lấy giá trị phần tử đỉnh stack.
- Kiểm tra **stack đầy**: `top = size - 1`.
- Kiểm tra **stack rỗng**: `top = -1`.

### Queue
Queue là cấu trúc dữ liệu theo nguyên tắc **first in, first out**.

#### Linear Queue
- **enqueue**: thêm phần tử vào **cuối** hàng đợi.
- **dequeue**: xóa phần tử ở **đầu** hàng đợi.
- **front** để lấy giá trị phần tử đứng đầu.
- **rear** để lấy giá trị phần tử đứng đầu.
- Kiểm tra hàng đợi đầy/rỗng.

##### Cách thức hoạt động
- Khi vừa khởi tạo, `front = rear = -1`. 
- Ở lần enqueue đầu `front = rear = 0`.
- Khi enqueue thì `rear++`, dequeue thì `front++`.  
- **Chỉ thêm phần tử mới khi đã xóa toàn bộ phần tử hiện có (trường hợp `rear = size - 1`), dù phía trước đã có ô trống**.

#### Circular Queue
Thứ khác biệt của Circular là công thức giúp front và rear di chuyển lên và quay lại như vòng tròn khi có ô trống thay vì phải đợi xóa toàn bộ như Linear.  
`queue->index = (queue->index + 1) % queue->size`.  
**index**: _chỉ số của front hoặc rear_

</p>
</details>

<details><summary>UNIT 10: LINKED LIST</summary>
<p>

## Unit 10: Linked List

## Giới thiệu
**Linked List** là một cấu trúc dữ liệu dùng để lưu trữ danh sách các phần tử liên kết với nhau bằng con trỏ. Mỗi phần tử trong danh sách được gọi là một **node**, _chứa dữ liệu và con trỏ_ trỏ đến node kế tiếp.

---

### Cấu trúc dữ liệu

```c
typedef struct Node {
    int data;
    struct Node *next;
} Node;
```

- `data`: Lưu dữ liệu của node.
- `next`: Con trỏ trỏ đến node tiếp theo.

---

### Chức năng chính

#### 1. Tạo node mới
```c
Node* createNode(int data);
```
- Cấp phát động bộ nhớ cho một node mới.
- Khởi tạo dữ liệu và con trỏ `next` trỏ `NULL`.

#### 2. Kiểm tra list rỗng
```c
bool isEmpty(Node *first);
```
- Kiểm tra danh sách có rỗng không.

#### 3. Lấy kích thước list
```c
int size(Node *first);
```
- Trả về số lượng node trong danh sách.

#### 4. Thêm node
- **Vào cuối**: `push_back(Node **first, int data);`
- **Vào đầu**: `push_front(Node **first, int data);`
- **Vào vị trí bất kỳ**: `insert(Node **first, int data, int index);`

#### 5. Xóa node
- **Node đầu**: `pop_front(Node **first);`
- **Node cuối**: `pop_back(Node **first);`
- **Node bất kỳ**: `delete_list(Node **first, int index);`

#### 6. Lấy dữ liệu
- **Node đầu**: `front(Node *first);`
- **Node cuối**: `back(Node *first);`
- **Node bất kỳ**: `get(Node *first, int index);`

#### 7. Hiển thị list
```c
display(Node *first);
```
- In ra toàn bộ danh sách.

---

## Chú ý
- **Memory Leak**: Luôn giải phóng bộ nhớ sau khi dùng (`free()`).
- **Quản lý con trỏ**: Chú ý khi thao tác với con trỏ để tránh lỗi segmentation fault.

### Bài tập: [Here](https://github.com/Ho-Nguyen-Anh-Tuan/C-Advance/blob/main/Linked_List/test.c)

</p>
</details>

<details><summary>UNIT 11: JSON</summary>
<p>


</p>
</details>
