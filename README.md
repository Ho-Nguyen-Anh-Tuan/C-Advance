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
