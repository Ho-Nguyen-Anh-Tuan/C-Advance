#include <stdio.h>
#include <setjmp.h>

typedef enum
{
    NO_ERROR,
    FILE_ERROR, 
    NETWORK_ERROR,
    CALCULATION_ERROR
} ErrorCodes;

jmp_buf buf;
int exception_code = NO_ERROR;

const char *message = NULL;

#define TRY if ((exception_code = setjmp(buf)) == 0)    

/* dùng do while để marco đồng bộ */
#define THROW(code, messageInfor)   \
    do {                            \
        exception_code = code;      \
        message = messageInfor;     \
        longjmp(buf, code);         \
    } while (0)

#define CATCH(error) else if (exception_code == error)


void readFile(){
    printf("Đang mở file...\n");
    THROW(FILE_ERROR, "Lỗi mở file: Không tìm thấy file.");
}

void networkOperation(){
    printf("Đang kết nối mạng...\n");

    /*gán exception_code = 2 (NETWROK_ERROR = 2), gán tin nhắn vào con trỏ hằng message. Xong nhảy về setjmp.*/
    THROW(NETWORK_ERROR, "Lỗi kết nối: Kiểm tra lại cáp kết nối.");
}

void calculateData(){
    printf("Đang tính toán dữ liệu...\n");
    THROW(CALCULATION_ERROR, "Lỗi tính toán: Kiểm tra lại tham số.");
}

int main(int argc, char const *argv[])
{
    printf("---Bắt đầu chương trình---\n");

    // lần đầu gọi setjmp -> = 0
    TRY{
        //readFile();
        //networkOperation();
        calculateData();
    }

    /*Catch thực hiện so sánh exception_code với lỗi trong list enum. Dính thằng nào, in lỗi thằng đó*/
    CATCH(FILE_ERROR){
        printf("%s\n", message);
    }
    CATCH(NETWORK_ERROR){
        printf("%s\n", message);
    }
    CATCH(CALCULATION_ERROR){
        printf("%s\n", message);
    }

    printf("---Chương trình kết thúc---\n");

    return 0;
}
