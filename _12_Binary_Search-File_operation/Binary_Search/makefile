# Tên của chương trình 
TARGET = main	# main.exe

# Thư muck chứa header và source files
HEADER_DIR = Header
SOURCE_DIR = Source

# Các tệp nguồn và tệp object tương ứng
SOURCES = $(wildcard $(SOURCE_DIR)/*.c)
OBJECTS = $(SOURCES:.c=.o)

# Trình biên dịch và các cờ
CC = gcc
CFLAGS = -I$(HEADER_DIR) -Wall -Wextra

# Quy tắc đầu tiên là quy tắc mặc định được thực thi
all: $(TARGET)	# make

# Quy tắc để tạo ra tệp thực thi
$(TARGET): $(OBJECTS)
	$(CC) -o $@ $^

# Quy tắc để biên dịch các tệp .c thành .o
$(SOURCE_DIR)/%.o: $(SOURCE_DIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $^

# Quy tắc để làm sạch thư mục build
clean:
	rm -f $(SOURCE_DIR)/*.o $(TARGET)

run: $(TARGET)
	./$(TARGET)

# Quy tắc gỉả (phone target)
.PHONY: all			

