# 0 "main.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "main.c"
# 1 "C:/msys64/ucrt64/include/stdio.h" 1 3
# 9 "C:/msys64/ucrt64/include/stdio.h" 3
# 1 "C:/msys64/ucrt64/include/corecrt_stdio_config.h" 1 3
# 10 "C:/msys64/ucrt64/include/corecrt_stdio_config.h" 3
# 1 "C:/msys64/ucrt64/include/corecrt.h" 1 3
# 10 "C:/msys64/ucrt64/include/corecrt.h" 3
# 1 "C:/msys64/ucrt64/include/_mingw.h" 1 3
# 10 "C:/msys64/ucrt64/include/_mingw.h" 3
# 1 "C:/msys64/ucrt64/include/_mingw_mac.h" 1 3
# 98 "C:/msys64/ucrt64/include/_mingw_mac.h" 3
             
# 107 "C:/msys64/ucrt64/include/_mingw_mac.h" 3
             
# 316 "C:/msys64/ucrt64/include/_mingw_mac.h" 3
       
# 395 "C:/msys64/ucrt64/include/_mingw_mac.h" 3
       
# 11 "C:/msys64/ucrt64/include/_mingw.h" 2 3
# 1 "C:/msys64/ucrt64/include/_mingw_secapi.h" 1 3
# 12 "C:/msys64/ucrt64/include/_mingw.h" 2 3
# 296 "C:/msys64/ucrt64/include/_mingw.h" 3
# 1 "C:/msys64/ucrt64/include/vadefs.h" 1 3
# 9 "C:/msys64/ucrt64/include/vadefs.h" 3
# 1 "C:/msys64/ucrt64/include/_mingw.h" 1 3
# 675 "C:/msys64/ucrt64/include/_mingw.h" 3
# 1 "C:/msys64/ucrt64/include/sdks/_mingw_ddk.h" 1 3
# 676 "C:/msys64/ucrt64/include/_mingw.h" 2 3
# 10 "C:/msys64/ucrt64/include/vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 24 "C:/msys64/ucrt64/include/vadefs.h" 3
  
# 24 "C:/msys64/ucrt64/include/vadefs.h" 3
 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 103 "C:/msys64/ucrt64/include/vadefs.h" 3
#pragma pack(pop)
# 297 "C:/msys64/ucrt64/include/_mingw.h" 2 3
# 594 "C:/msys64/ucrt64/include/_mingw.h" 3
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{

  __asm__ __volatile__("int {$}3":);







}
# 615 "C:/msys64/ucrt64/include/_mingw.h" 3
void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code)
{

  __asm__ __volatile__("int {$}0x29"::"c"(code));
# 629 "C:/msys64/ucrt64/include/_mingw.h" 3
  __builtin_unreachable();
}
# 655 "C:/msys64/ucrt64/include/_mingw.h" 3
const char *__mingw_get_crt_info (void);
# 11 "C:/msys64/ucrt64/include/corecrt.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "C:/msys64/ucrt64/include/corecrt.h" 3
__extension__ typedef unsigned long long size_t;
# 45 "C:/msys64/ucrt64/include/corecrt.h" 3
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 62 "C:/msys64/ucrt64/include/corecrt.h" 3
__extension__ typedef long long intptr_t;
# 75 "C:/msys64/ucrt64/include/corecrt.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 88 "C:/msys64/ucrt64/include/corecrt.h" 3
__extension__ typedef long long ptrdiff_t;
# 98 "C:/msys64/ucrt64/include/corecrt.h" 3
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 138 "C:/msys64/ucrt64/include/corecrt.h" 3
typedef __time64_t time_t;
# 430 "C:/msys64/ucrt64/include/corecrt.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {

  const unsigned short *_locale_pctype;
  int _locale_mb_cur_max;
  unsigned int _locale_lc_codepage;
# 482 "C:/msys64/ucrt64/include/corecrt.h" 3
} threadlocinfo;
# 501 "C:/msys64/ucrt64/include/corecrt.h" 3
#pragma pack(pop)
# 11 "C:/msys64/ucrt64/include/corecrt_stdio_config.h" 2 3
# 10 "C:/msys64/ucrt64/include/stdio.h" 2 3

#pragma pack(push,_CRT_PACKING)

       

       

       

       
# 33 "C:/msys64/ucrt64/include/stdio.h" 3
  struct _iobuf {

    void *_Placeholder;
# 46 "C:/msys64/ucrt64/include/stdio.h" 3
  };
  typedef struct _iobuf FILE;
# 99 "C:/msys64/ucrt64/include/stdio.h" 3
# 1 "C:/msys64/ucrt64/include/_mingw_off_t.h" 1 3




  typedef long _off_t;

  typedef long off32_t;





  __extension__ typedef long long _off64_t;

  __extension__ typedef long long off64_t;
# 26 "C:/msys64/ucrt64/include/_mingw_off_t.h" 3
typedef off32_t off_t;
# 100 "C:/msys64/ucrt64/include/stdio.h" 2 3

__attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) __acrt_iob_func(unsigned index);

  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) __iob_func(void);
# 112 "C:/msys64/ucrt64/include/stdio.h" 3
  __extension__ typedef long long fpos_t;
# 156 "C:/msys64/ucrt64/include/stdio.h" 3
extern
  __attribute__((__format__(__gnu_scanf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_sscanf(const char * __restrict__ _Src,const char * __restrict__ _Format,...);
extern
  __attribute__((__format__(__gnu_scanf__, 2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vsscanf (const char * __restrict__ _Str,const char * __restrict__ Format,va_list argp);
extern
  __attribute__((__format__(__gnu_scanf__, 1,2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_scanf(const char * __restrict__ _Format,...);
extern
  __attribute__((__format__(__gnu_scanf__, 1,0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vscanf(const char * __restrict__ Format, va_list argp);
extern
  __attribute__((__format__(__gnu_scanf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);
extern
  __attribute__((__format__(__gnu_scanf__, 2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfscanf (FILE * __restrict__ fp, const char * __restrict__ Format,va_list argp);

extern
  __attribute__((__format__(__gnu_printf__,3,0))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_vsnprintf(char * __restrict__ _DstBuf,size_t _MaxCount,const char * __restrict__ _Format,
                               va_list _ArgList);
extern
  __attribute__((__format__(__gnu_printf__,3,4))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_snprintf(char * __restrict__ s, size_t n, const char * __restrict__ format, ...);
extern
  __attribute__((__format__(__gnu_printf__,1,2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_printf(const char * __restrict__ , ... ) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,1,0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vprintf (const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fprintf (FILE * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfprintf (FILE * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_sprintf (char * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vsprintf (char * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,3))) __attribute__((nonnull (1,2)))
  int __attribute__((__cdecl__)) __mingw_asprintf(char ** __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,0))) __attribute__((nonnull (1,2)))
  int __attribute__((__cdecl__)) __mingw_vasprintf(char ** __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));

extern
  __attribute__((__format__(__ms_scanf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_sscanf(const char * __restrict__ _Src,const char * __restrict__ _Format,...);
extern
  __attribute__((__format__(__ms_scanf__, 1,2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_scanf(const char * __restrict__ _Format,...);
extern
  __attribute__((__format__(__ms_scanf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);

extern
  __attribute__((__format__(__ms_printf__, 1,2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_printf(const char * __restrict__ , ... ) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__ms_printf__, 1,0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_vprintf (const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__ms_printf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fprintf (FILE * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__ms_printf__, 2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vfprintf (FILE * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__ms_printf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_sprintf (char * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__ms_printf__, 2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vsprintf (char * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));


  int __attribute__((__cdecl__)) __stdio_common_vsprintf(unsigned long long options, char *str, size_t len, const char *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfprintf(unsigned long long options, FILE *file, const char *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vsscanf(unsigned long long options, const char *input, size_t length, const char *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfscanf(unsigned long long options, FILE *file, const char *format, _locale_t locale, va_list valist);
# 414 "C:/msys64/ucrt64/include/stdio.h" 3
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wshadow"

  __attribute__((__format__ (__gnu_printf__, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) fprintf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);
  __attribute__((__format__ (__gnu_printf__, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) printf(const char * __restrict__ _Format,...);
  __attribute__((__format__ (__gnu_printf__, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) sprintf(char * __restrict__ _Dest,const char * __restrict__ _Format,...) ;

  __attribute__((__format__ (__gnu_printf__, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) vfprintf(FILE * __restrict__ _File,const char * __restrict__ _Format,va_list _ArgList);
  __attribute__((__format__ (__gnu_printf__, 1, 0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) vprintf(const char * __restrict__ _Format,va_list _ArgList);
  __attribute__((__format__ (__gnu_printf__, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) vsprintf(char * __restrict__ _Dest,const char * __restrict__ _Format,va_list _Args) ;

 
  __attribute__((__format__ (__gnu_scanf__, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) fscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);
 
  __attribute__((__format__ (__gnu_scanf__, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) scanf(const char * __restrict__ _Format,...);
 
  __attribute__((__format__ (__gnu_scanf__, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) sscanf(const char * __restrict__ _Src,const char * __restrict__ _Format,...);







  __attribute__((__format__ (__gnu_scanf__, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int vfscanf (FILE *__stream, const char *__format, __builtin_va_list __local_argv);

  __attribute__((__format__ (__gnu_scanf__, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int vsscanf (const char * __restrict__ __source, const char * __restrict__ __format, __builtin_va_list __local_argv);
  __attribute__((__format__ (__gnu_scanf__, 1, 0))) __attribute__ ((__nonnull__ (1)))
  int vscanf(const char *__format, __builtin_va_list __local_argv);


#pragma GCC diagnostic pop
# 517 "C:/msys64/ucrt64/include/stdio.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _filbuf(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _flsbuf(int _Ch,FILE *_File);



  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _fsopen(const char *_Filename,const char *_Mode,int _ShFlag);

  void __attribute__((__cdecl__)) clearerr(FILE *_File);
  int __attribute__((__cdecl__)) fclose(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fcloseall(void);



  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _fdopen(int _FileHandle,const char *_Mode);

  int __attribute__((__cdecl__)) feof(FILE *_File);
  int __attribute__((__cdecl__)) ferror(FILE *_File);
  int __attribute__((__cdecl__)) fflush(FILE *_File);
  int __attribute__((__cdecl__)) fgetc(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fgetchar(void);
  int __attribute__((__cdecl__)) fgetpos(FILE * __restrict__ _File ,fpos_t * __restrict__ _Pos);
  int __attribute__((__cdecl__)) fgetpos64(FILE * __restrict__ _File ,fpos_t * __restrict__ _Pos);
  char *__attribute__((__cdecl__)) fgets(char * __restrict__ _Buf,int _MaxCount,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fileno(FILE *_File);



  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _tempnam(const char *_DirName,const char *_FilePrefix);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _flushall(void);
  FILE *__attribute__((__cdecl__)) fopen(const char * __restrict__ _Filename,const char * __restrict__ _Mode) ;
  FILE *fopen64(const char * __restrict__ filename,const char * __restrict__ mode);
  int __attribute__((__cdecl__)) fputc(int _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fputchar(int _Ch);
  int __attribute__((__cdecl__)) fputs(const char * __restrict__ _Str,FILE * __restrict__ _File);
  size_t __attribute__((__cdecl__)) fread(void * __restrict__ _DstBuf,size_t _ElementSize,size_t _Count,FILE * __restrict__ _File);
  FILE *__attribute__((__cdecl__)) freopen(const char * __restrict__ _Filename,const char * __restrict__ _Mode,FILE * __restrict__ _File) ;
  int __attribute__((__cdecl__)) fsetpos(FILE *_File,const fpos_t *_Pos);
  int __attribute__((__cdecl__)) fsetpos64(FILE *_File,const fpos_t *_Pos);
  int __attribute__((__cdecl__)) fseek(FILE *_File,long _Offset,int _Origin);
  long __attribute__((__cdecl__)) ftell(FILE *_File);



  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fseeki64(FILE *_File,long long _Offset,int _Origin);
  __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _ftelli64(FILE *_File);

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int fseeko(FILE *_File, _off_t _Offset, int _Origin) {
    return fseek(_File, _Offset, _Origin);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int fseeko64(FILE *_File, _off64_t _Offset, int _Origin) {
    return _fseeki64(_File, _Offset, _Origin);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) _off_t ftello(FILE *_File) {
    return ftell(_File);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) _off64_t ftello64(FILE *_File) {
    return _ftelli64(_File);
  }
# 597 "C:/msys64/ucrt64/include/stdio.h" 3
  size_t __attribute__((__cdecl__)) fwrite(const void * __restrict__ _Str,size_t _Size,size_t _Count,FILE * __restrict__ _File);
  int __attribute__((__cdecl__)) getc(FILE *_File);
  int __attribute__((__cdecl__)) getchar(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _getmaxstdio(void);
  char *__attribute__((__cdecl__)) gets(char *_Buffer)
    __attribute__((__warning__("Using gets() is always unsafe - use fgets() instead")));
  int __attribute__((__cdecl__)) _getw(FILE *_File);


  void __attribute__((__cdecl__)) perror(const char *_ErrMsg);


  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _pclose(FILE *_File);
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _popen(const char *_Command,const char *_Mode);





  int __attribute__((__cdecl__)) putc(int _Ch,FILE *_File);
  int __attribute__((__cdecl__)) putchar(int _Ch);
  int __attribute__((__cdecl__)) puts(const char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putw(int _Word,FILE *_File);


  int __attribute__((__cdecl__)) remove(const char *_Filename);
  int __attribute__((__cdecl__)) rename(const char *_OldFilename,const char *_NewFilename);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _unlink(const char *_Filename);

  int __attribute__((__cdecl__)) unlink(const char *_Filename) ;


  void __attribute__((__cdecl__)) rewind(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _rmtmp(void);
  void __attribute__((__cdecl__)) setbuf(FILE * __restrict__ _File,char * __restrict__ _Buffer) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _setmaxstdio(int _Max);
  __attribute__ ((__dllimport__)) unsigned int __attribute__((__cdecl__)) _set_output_format(unsigned int _Format);
  __attribute__ ((__dllimport__)) unsigned int __attribute__((__cdecl__)) _get_output_format(void);
  int __attribute__((__cdecl__)) setvbuf(FILE * __restrict__ _File,char * __restrict__ _Buf,int _Mode,size_t _Size);

  __attribute__ ((__pure__))
  __attribute__((__format__ (__gnu_printf__, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) _scprintf(const char * __restrict__ _Format,...);
  __attribute__((__format__ (__gnu_scanf__, 3, 4))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) _snscanf(const char * __restrict__ _Src,size_t _MaxCount,const char * __restrict__ _Format,...) ;







  __attribute__ ((__pure__))
  __attribute__((__format__(__ms_printf__, 1,0))) __attribute__ ((__nonnull__ (1)))
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _vscprintf(const char * __restrict__ _Format,va_list _ArgList);
  FILE *__attribute__((__cdecl__)) tmpfile(void) ;
  char *__attribute__((__cdecl__)) tmpnam(char *_Buffer);
  int __attribute__((__cdecl__)) ungetc(int _Ch,FILE *_File);


  __attribute__((__format__ (__gnu_printf__, 3, 0))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) _vsnprintf(char * __restrict__ _Dest,size_t _Count,const char * __restrict__ _Format,va_list _Args) ;
  __attribute__((__format__ (__gnu_printf__, 3, 4))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) _snprintf(char * __restrict__ _Dest,size_t _Count,const char * __restrict__ _Format,...) ;
# 712 "C:/msys64/ucrt64/include/stdio.h" 3
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wshadow"

  __attribute__((__format__ (__gnu_printf__, 3, 0))) __attribute__ ((__nonnull__ (3)))
  int vsnprintf (char * __restrict__ __stream, size_t __n, const char * __restrict__ __format, va_list __local_argv);

  __attribute__((__format__ (__gnu_printf__, 3, 4))) __attribute__ ((__nonnull__ (3)))
  int snprintf (char * __restrict__ __stream, size_t __n, const char * __restrict__ __format, ...);
# 778 "C:/msys64/ucrt64/include/stdio.h" 3
#pragma GCC diagnostic pop
# 887 "C:/msys64/ucrt64/include/stdio.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _set_printf_count_output(int _Value);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _get_printf_count_output(void);




                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_swscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vswscanf (const wchar_t * __restrict__ _Str,const wchar_t * __restrict__ Format,va_list argp);
                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_wscanf(const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vwscanf(const wchar_t * __restrict__ Format, va_list argp);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfwscanf (FILE * __restrict__ fp, const wchar_t * __restrict__ Format,va_list argp);

                                                      __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
                                                      __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_wprintf(const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList);
                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList);
                                                      __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_snwprintf (wchar_t * __restrict__ s, size_t n, const wchar_t * __restrict__ format, ...);
                                                      __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_vsnwprintf (wchar_t * __restrict__ , size_t, const wchar_t * __restrict__ , va_list);
                                                      __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_swprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ , ...);
                                                      __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vswprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ ,va_list);

                                                    __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_swscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,...);
                                                    __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_wscanf(const wchar_t * __restrict__ _Format,...);
                                                    __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);

                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_wprintf(const wchar_t * __restrict__ _Format,...);
                                                    __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vfwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList);
                                                    __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_vwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_swprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ , ...);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vswprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ ,va_list);


  int __attribute__((__cdecl__)) __stdio_common_vswprintf(unsigned long long options, wchar_t *str, size_t len, const wchar_t *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfwprintf(unsigned long long options, FILE *file, const wchar_t *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vswscanf(unsigned long long options, const wchar_t *input, size_t length, const wchar_t *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfwscanf(unsigned long long options, FILE *file, const wchar_t *format, _locale_t locale, va_list valist);
# 1031 "C:/msys64/ucrt64/include/stdio.h" 3
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) fwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vfwscanf(0x0002ULL, _File, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) swscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vswscanf(0x0002ULL, _Src, (size_t)-1, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) wscanf(const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vfwscanf(0x0002ULL, (__acrt_iob_func(0)), _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  __attribute__ ((__nonnull__ (2)))
  int vfwscanf (FILE *__stream, const wchar_t *__format, va_list __local_argv)
  {
    return __stdio_common_vfwscanf(0x0002ULL, __stream, __format, ((void *)0), __local_argv);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  __attribute__ ((__nonnull__ (2)))
  int vswscanf (const wchar_t * __restrict__ __source, const wchar_t * __restrict__ __format, va_list __local_argv)
  {
    return __stdio_common_vswscanf(0x0002ULL, __source, (size_t)-1, __format, ((void *)0), __local_argv);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  __attribute__ ((__nonnull__ (1)))
  int vwscanf(const wchar_t *__format, va_list __local_argv)
  {
    return __stdio_common_vfwscanf(0x0002ULL, (__acrt_iob_func(0)), __format, ((void *)0), __local_argv);
  }

  int __attribute__((__cdecl__)) fwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) wprintf(const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vfwprintf((0x0004ULL | 0x0020ULL), (__acrt_iob_func(1)), _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) vfwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList)
  {
    return __stdio_common_vfwprintf((0x0004ULL | 0x0020ULL), _File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) vwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList)
  {
    return __stdio_common_vfwprintf((0x0004ULL | 0x0020ULL), (__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
# 1140 "C:/msys64/ucrt64/include/stdio.h" 3
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfsopen(const wchar_t *_Filename,const wchar_t *_Mode,int _ShFlag);


  wint_t __attribute__((__cdecl__)) fgetwc(FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fgetwchar(void);
  wint_t __attribute__((__cdecl__)) fputwc(wchar_t _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fputwchar(wchar_t _Ch);
  wint_t __attribute__((__cdecl__)) getwc(FILE *_File);
  wint_t __attribute__((__cdecl__)) getwchar(void);
  wint_t __attribute__((__cdecl__)) putwc(wchar_t _Ch,FILE *_File);
  wint_t __attribute__((__cdecl__)) putwchar(wchar_t _Ch);
  wint_t __attribute__((__cdecl__)) ungetwc(wint_t _Ch,FILE *_File);
  wchar_t *__attribute__((__cdecl__)) fgetws(wchar_t * __restrict__ _Dst,int _SizeInWords,FILE * __restrict__ _File);
  int __attribute__((__cdecl__)) fputws(const wchar_t * __restrict__ _Str,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _getws(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putws(const wchar_t *_Str);


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) _scwprintf(const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vswprintf((0x0004ULL | 0x0020ULL) | 0x0002ULL, ((void *)0), 0, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  int __attribute__((__cdecl__)) _snwprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,...) ;
  int __attribute__((__cdecl__)) _vsnwprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,va_list _Args) ;


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int snwprintf (wchar_t * __restrict__ s, size_t n, const wchar_t * __restrict__ format, ...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, format);
    __ret = __stdio_common_vswprintf((0x0004ULL | 0x0020ULL) | 0x0002ULL, s, n, format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) vsnwprintf (wchar_t * __restrict__ s, size_t n, const wchar_t * __restrict__ format, va_list arg)
  {
    int __ret = __stdio_common_vswprintf((0x0004ULL | 0x0020ULL), s, n, format, ((void *)0), arg);
    return __ret < 0 ? -1 : __ret;
  }


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) _swprintf(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vswprintf((0x0004ULL | 0x0020ULL), _Dest, (size_t)-1, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) _vswprintf(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,va_list _Args)
  {
    return __stdio_common_vswprintf((0x0004ULL | 0x0020ULL), _Dest, (size_t)-1, _Format, ((void *)0), _Args);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) _vscwprintf(const wchar_t * __restrict__ _Format, va_list _ArgList)
  {
      int _Result = __stdio_common_vswprintf((0x0004ULL | 0x0020ULL) | 0x0002ULL, ((void *)0), 0, _Format, ((void *)0), _ArgList);
      return _Result < 0 ? -1 : _Result;
  }
# 1248 "C:/msys64/ucrt64/include/stdio.h" 3
# 1 "C:/msys64/ucrt64/include/swprintf.inl" 1 3
# 12 "C:/msys64/ucrt64/include/swprintf.inl" 3
static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
                                                      __attribute__ ((__nonnull__ (3)))
int vswprintf (wchar_t *__stream, size_t __count, const wchar_t *__format, __builtin_va_list __local_argv)
{
  return vsnwprintf( __stream, __count, __format, __local_argv );
}

static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
                                                      __attribute__ ((__nonnull__ (3)))
int swprintf (wchar_t *__stream, size_t __count, const wchar_t *__format, ...)
{
  int __retval;
  __builtin_va_list __local_argv;

  __builtin_va_start( __local_argv, __format );
  __retval = vswprintf( __stream, __count, __format, __local_argv );
  __builtin_va_end( __local_argv );
  return __retval;
}
# 1249 "C:/msys64/ucrt64/include/stdio.h" 2 3
# 1258 "C:/msys64/ucrt64/include/stdio.h" 3
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wtempnam(const wchar_t *_Directory,const wchar_t *_FilePrefix);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _snwscanf(const wchar_t * __restrict__ _Src,size_t _MaxCount,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfdopen(int _FileHandle ,const wchar_t *_Mode);
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfopen(const wchar_t * __restrict__ _Filename,const wchar_t *__restrict__ _Mode) ;
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfreopen(const wchar_t * __restrict__ _Filename,const wchar_t * __restrict__ _Mode,FILE * __restrict__ _OldFile) ;



  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wperror(const wchar_t *_ErrMsg);

  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wpopen(const wchar_t *_Command,const wchar_t *_Mode);




  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wremove(const wchar_t *_Filename);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wtmpnam(wchar_t *_Buffer);

  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fgetwc_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fputwc_nolock(wchar_t _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _ungetwc_nolock(wint_t _Ch,FILE *_File);
# 1303 "C:/msys64/ucrt64/include/stdio.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fgetc_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fputc_nolock(int _Char, FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _getc_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putc_nolock(int _Char, FILE *_File);
# 1318 "C:/msys64/ucrt64/include/stdio.h" 3
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _lock_file(FILE *_File);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _unlock_file(FILE *_File);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fclose_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fflush_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _fread_nolock(void * __restrict__ _DstBuf,size_t _ElementSize,size_t _Count,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fseek_nolock(FILE *_File,long _Offset,int _Origin);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _ftell_nolock(FILE *_File);
  __extension__ __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fseeki64_nolock(FILE *_File,long long _Offset,int _Origin);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _ftelli64_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _fwrite_nolock(const void * __restrict__ _DstBuf,size_t _Size,size_t _Count,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _ungetc_nolock(int _Ch,FILE *_File);






  char *__attribute__((__cdecl__)) tempnam(const char *_Directory,const char *_FilePrefix) ;
  int __attribute__((__cdecl__)) fcloseall(void) ;
  FILE *__attribute__((__cdecl__)) fdopen(int _FileHandle,const char *_Format) ;
  int __attribute__((__cdecl__)) fgetchar(void) ;
  int __attribute__((__cdecl__)) fileno(FILE *_File) ;
  int __attribute__((__cdecl__)) flushall(void) ;
  int __attribute__((__cdecl__)) fputchar(int _Ch) ;
  int __attribute__((__cdecl__)) getw(FILE *_File) ;
  int __attribute__((__cdecl__)) putw(int _Ch,FILE *_File) ;
  int __attribute__((__cdecl__)) rmtmp(void) ;
# 1362 "C:/msys64/ucrt64/include/stdio.h" 3
int __attribute__((__cdecl__)) __mingw_str_wide_utf8 (const wchar_t * const wptr, char **mbptr, size_t * buflen);
# 1376 "C:/msys64/ucrt64/include/stdio.h" 3
int __attribute__((__cdecl__)) __mingw_str_utf8_wide (const char *const mbptr, wchar_t ** wptr, size_t * buflen);
# 1385 "C:/msys64/ucrt64/include/stdio.h" 3
void __attribute__((__cdecl__)) __mingw_str_free(void *ptr);






  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnl(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnle(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnlp(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnlpe(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnv(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnve(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList,const wchar_t *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnvp(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnvpe(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList,const wchar_t *const *_Env);
# 1416 "C:/msys64/ucrt64/include/stdio.h" 3
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnv(int _Mode,const char *_Filename,const char *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnve(int _Mode,const char *_Filename,const char *const *_ArgList,const char *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnvp(int _Mode,const char *_Filename,const char *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnvpe(int _Mode,const char *_Filename,const char *const *_ArgList,const char *const *_Env);







       
       
       
       

#pragma pack(pop)

# 1 "C:/msys64/ucrt64/include/sec_api/stdio_s.h" 1 3
# 9 "C:/msys64/ucrt64/include/sec_api/stdio_s.h" 3
# 1 "C:/msys64/ucrt64/include/stdio.h" 1 3
# 10 "C:/msys64/ucrt64/include/sec_api/stdio_s.h" 2 3
# 29 "C:/msys64/ucrt64/include/sec_api/stdio_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) clearerr_s(FILE *_File);

  size_t __attribute__((__cdecl__)) fread_s(void *_DstBuf,size_t _DstSize,size_t _ElementSize,size_t _Count,FILE *_File);


  int __attribute__((__cdecl__)) __stdio_common_vsprintf_s(unsigned long long _Options, char *_Str, size_t _Len, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vsprintf_p(unsigned long long _Options, char *_Str, size_t _Len, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vsnprintf_s(unsigned long long _Options, char *_Str, size_t _Len, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vfprintf_s(unsigned long long _Options, FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vfprintf_p(unsigned long long _Options, FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList);

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfscanf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfscanf(0x0001ULL, _File, _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vfscanf_s(FILE *_File, const char *_Format, va_list _ArgList)
  {
    return _vfscanf_s_l(_File, _Format, ((void *)0), _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscanf_s_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vscanf_s(const char *_Format, va_list _ArgList)
  {
    return _vfscanf_s_l((__acrt_iob_func(0)), _Format, ((void *)0), _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fscanf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fscanf_s(FILE *_File, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfscanf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scanf_s_l(const char *_Format, _locale_t _Locale ,...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) scanf_s(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfscanf_s_l((__acrt_iob_func(0)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfscanf_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfscanf(0, _File, _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscanf_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fscanf_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scanf_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsscanf_s_l(const char *_Src, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsscanf(0x0001ULL, _Src, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vsscanf_s(const char *_Src, const char *_Format, va_list _ArgList)
  {
    return _vsscanf_s_l(_Src, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sscanf_s_l(const char *_Src, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsscanf_s_l(_Src, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) sscanf_s(const char *_Src, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsscanf_s_l(_Src, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsscanf_l(const char *_Src, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsscanf(0, _Src, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sscanf_l(const char *_Src, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsscanf_l(_Src, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snscanf_s_l(const char *_Src, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = __stdio_common_vsscanf(0x0001ULL, _Src, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snscanf_s(const char *_Src, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = __stdio_common_vsscanf(0x0001ULL, _Src, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snscanf_l(const char *_Src, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = __stdio_common_vsscanf(0, _Src, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfprintf_s((0x0004ULL | 0x0020ULL), _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vfprintf_s(FILE *_File, const char *_Format, va_list _ArgList)
  {
    return _vfprintf_s_l(_File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_s_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vprintf_s(const char *_Format, va_list _ArgList)
  {
    return _vfprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_s_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fprintf_s(FILE *_File, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) printf_s(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_c_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf((0x0004ULL | 0x0020ULL), _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_c(char *_DstBuf, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsnprintf_c_l(_DstBuf, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_c_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnprintf_c_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_c(char *_DstBuf, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnprintf_c_l(_DstBuf, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_s_l(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsnprintf_s((0x0004ULL | 0x0020ULL), _DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vsnprintf_s(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_s(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_s_l(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_s(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_s_l(char *_DstBuf, size_t _DstSize, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf_s((0x0004ULL | 0x0020ULL), _DstBuf, _DstSize, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vsprintf_s(char *_DstBuf, size_t _Size, const char *_Format, va_list _ArgList)
  {
    return _vsprintf_s_l(_DstBuf, _Size, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_s_l(char *_DstBuf, size_t _DstSize, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsprintf_s_l(_DstBuf, _DstSize, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) sprintf_s(char *_DstBuf, size_t _DstSize, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsprintf_s_l(_DstBuf, _DstSize, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_p_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfprintf_p((0x0004ULL | 0x0020ULL), _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_p(FILE *_File, const char *_Format, va_list _ArgList)
  {
    return _vfprintf_p_l(_File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_p_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_p(const char *_Format, va_list _ArgList)
  {
    return _vfprintf_p_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_p_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = __stdio_common_vfprintf_p((0x0004ULL | 0x0020ULL), _File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_p(FILE *_File, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_p_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_p_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_p(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_p_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_p_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf_p((0x0004ULL | 0x0020ULL), _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_p(char *_Dst, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsprintf_p_l(_Dst, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_p_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsprintf_p_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_p(char *_Dst, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsprintf_p_l(_Dst, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscprintf_p_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf_p(0x0002ULL, ((void *)0), 0, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscprintf_p(const char *_Format, va_list _ArgList)
  {
    return _vscprintf_p_l(_Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scprintf_p_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vscprintf_p_l(_Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scprintf_p(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vscprintf_p_l(_Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfprintf((0x0004ULL | 0x0020ULL), _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf(0x0001ULL, _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnprintf_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_l(char *_DstBuf, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vsnprintf_l(_DstBuf, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_l(char *_DstBuf, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsprintf_l(_DstBuf, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscprintf_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf(0x0002ULL, ((void *)0), 0, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scprintf_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vscprintf_l(_Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
# 583 "C:/msys64/ucrt64/include/sec_api/stdio_s.h" 3
 
 
 
 
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) fopen_s(FILE **_File,const char *_Filename,const char *_Mode);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) freopen_s(FILE** _File, const char *_Filename, const char *_Mode, FILE *_Stream);

  __attribute__ ((__dllimport__)) char* __attribute__((__cdecl__)) gets_s(char*,rsize_t);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) tmpfile_s(FILE **_File);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) tmpnam_s(char*,rsize_t);
 




  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _getws_s(wchar_t *_Str,size_t _SizeInWords);
 


  int __attribute__((__cdecl__)) __stdio_common_vswprintf_s(unsigned long long _Options, wchar_t *_Str, size_t _Len, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vsnwprintf_s(unsigned long long _Options, wchar_t *_Str, size_t _Len, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vfwprintf_s(unsigned long long _Options, FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfwscanf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfwscanf(0x0002ULL | 0x0001ULL, _File, _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vfwscanf_s(FILE* _File, const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwscanf_s_l(_File, _Format, ((void *)0), _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vwscanf_s_l(const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfwscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vwscanf_s(const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwscanf_s_l((__acrt_iob_func(0)), _Format, ((void *)0), _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fwscanf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwscanf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fwscanf_s(FILE *_File, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwscanf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _wscanf_s_l(const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) wscanf_s(const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vswscanf_s_l(const wchar_t *_Src, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswscanf(0x0002ULL | 0x0001ULL, _Src, (size_t)-1, _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vswscanf_s(const wchar_t *_Src, const wchar_t *_Format, va_list _ArgList)
  {
    return _vswscanf_s_l(_Src, _Format, ((void *)0), _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _swscanf_s_l(const wchar_t *_Src, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vswscanf_s_l(_Src, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) swscanf_s(const wchar_t *_Src, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vswscanf_s_l(_Src, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnwscanf_s_l(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswscanf(0x0002ULL | 0x0001ULL, _Src, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwscanf_s_l(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnwscanf_s_l(_Src, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwscanf_s(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnwscanf_s_l(_Src, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfwprintf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfwprintf_s((0x0004ULL | 0x0020ULL), _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vwprintf_s_l(const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vfwprintf_s(FILE *_File, const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwprintf_s_l(_File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vwprintf_s(const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fwprintf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwprintf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _wprintf_s_l(const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fwprintf_s(FILE *_File, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwprintf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) wprintf_s(const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vswprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswprintf_s((0x0004ULL | 0x0020ULL), _DstBuf, _DstSize, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vswprintf_s(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, va_list _ArgList)
  {
    return _vswprintf_s_l(_DstBuf, _DstSize, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _swprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vswprintf_s_l(_DstBuf, _DstSize, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) swprintf_s(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vswprintf_s_l(_DstBuf, _DstSize, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnwprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsnwprintf_s((0x0004ULL | 0x0020ULL), _DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnwprintf_s(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, va_list _ArgList)
  {
    return _vsnwprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnwprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwprintf_s(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnwprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
# 862 "C:/msys64/ucrt64/include/sec_api/stdio_s.h" 3
 
 
 
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wfopen_s(FILE **_File,const wchar_t *_Filename,const wchar_t *_Mode);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wfreopen_s(FILE **_File,const wchar_t *_Filename,const wchar_t *_Mode,FILE *_OldFile);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wtmpnam_s(wchar_t *_DstBuf,size_t _SizeInWords);
 
# 912 "C:/msys64/ucrt64/include/sec_api/stdio_s.h" 3
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _fread_nolock_s(void *_DstBuf,size_t _DstSize,size_t _ElementSize,size_t _Count,FILE *_File);
# 1435 "C:/msys64/ucrt64/include/stdio.h" 2 3
# 2 "main.c" 2
# 1 "C:/msys64/ucrt64/include/unistd.h" 1 3
# 10 "C:/msys64/ucrt64/include/unistd.h" 3
# 1 "C:/msys64/ucrt64/include/io.h" 1 3
# 9 "C:/msys64/ucrt64/include/io.h" 3
# 1 "C:/msys64/ucrt64/include/crtdefs.h" 1 3
# 10 "C:/msys64/ucrt64/include/io.h" 2 3
# 1 "C:/msys64/ucrt64/include/string.h" 1 3
# 45 "C:/msys64/ucrt64/include/string.h" 3
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int __attribute__((__cdecl__)) memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * __attribute__((__cdecl__)) memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memcpy_s (void *_dest,size_t _numberOfElements,const void *_src,size_t _count);
  void * __attribute__((__cdecl__)) mempcpy (void *_Dst, const void *_Src, size_t _Size);
  void * __attribute__((__cdecl__)) memset(void *_Dst,int _Val,size_t _Size);

  void * __attribute__((__cdecl__)) memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int __attribute__((__cdecl__)) memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * __attribute__((__cdecl__)) _strset(char *_Str,int _Val) ;
  char * __attribute__((__cdecl__)) _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * __attribute__((__cdecl__)) strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * __attribute__((__cdecl__)) strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int __attribute__((__cdecl__)) strcmp(const char *_Str1,const char *_Str2);
  size_t __attribute__((__cdecl__)) strlen(const char *_Str);
  size_t __attribute__((__cdecl__)) strnlen(const char *_Str,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strdup(const char *_Src);
  char *__attribute__((__cdecl__)) strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int __attribute__((__cdecl__)) strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strerror(const char *_ErrMsg) ;
  char *__attribute__((__cdecl__)) strerror(int) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strpbrk(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strrev(char *_Str);
  size_t __attribute__((__cdecl__)) strspn(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strstr(const char *_Str,const char *_SubStr);
  char *__attribute__((__cdecl__)) strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
       

  char *strtok_r(char * __restrict__ _Str, const char * __restrict__ _Delim, char ** __restrict__ __last);
       
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char *__attribute__((__cdecl__)) strdup(const char *_Src) ;
  int __attribute__((__cdecl__)) strcmpi(const char *_Str1,const char *_Str2) ;
  int __attribute__((__cdecl__)) stricmp(const char *_Str1,const char *_Str2) ;
  char *__attribute__((__cdecl__)) strlwr(char *_Str) ;
  int __attribute__((__cdecl__)) strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int __attribute__((__cdecl__)) strncasecmp (const char *, const char *, size_t);
  int __attribute__((__cdecl__)) strcasecmp (const char *, const char *);







  char *__attribute__((__cdecl__)) strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char *__attribute__((__cdecl__)) strrev(char *_Str) ;
  char *__attribute__((__cdecl__)) strset(char *_Str,int _Val) ;
  char *__attribute__((__cdecl__)) strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsdup(const wchar_t *_Str);
  wchar_t *__attribute__((__cdecl__)) wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  wchar_t *__attribute__((__cdecl__)) wcschr(const wchar_t *_Str,wchar_t _Ch);
  int __attribute__((__cdecl__)) wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t *__attribute__((__cdecl__)) wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t __attribute__((__cdecl__)) wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t __attribute__((__cdecl__)) wcslen(const wchar_t *_Str);
  size_t __attribute__((__cdecl__)) wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t *__attribute__((__cdecl__)) _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
  wchar_t *__attribute__((__cdecl__)) wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t __attribute__((__cdecl__)) wcsspn(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);

  wchar_t *__attribute__((__cdecl__)) wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim,wchar_t **_Ptr) ;



  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t *__attribute__((__cdecl__)) wcsdup(const wchar_t *_Str) ;

  int __attribute__((__cdecl__)) wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int __attribute__((__cdecl__)) wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsrev(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t *__attribute__((__cdecl__)) wcslwr(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsupr(wchar_t *_Str) ;
  int __attribute__((__cdecl__)) wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;







# 1 "C:/msys64/ucrt64/include/sec_api/string_s.h" 1 3
# 9 "C:/msys64/ucrt64/include/sec_api/string_s.h" 3
# 1 "C:/msys64/ucrt64/include/string.h" 1 3
# 10 "C:/msys64/ucrt64/include/sec_api/string_s.h" 2 3
# 24 "C:/msys64/ucrt64/include/sec_api/string_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strset_s(char *_Dst,size_t _DstSize,int _Value);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strerror_s(char *_Buf,size_t _SizeInBytes,const char *_ErrMsg);
 
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) strerror_s(char *_Buf,size_t _SizeInBytes,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strnset_s(char *_Str,size_t _Size,int _Val,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncat_s(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncat_s_l(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcpy_s(char *_Dst, rsize_t _SizeInBytes, const char *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncpy_s(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncpy_s_l(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount, _locale_t _Locale);
 
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) strtok_s(char *_Str,const char *_Delim,char **_Context);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strtok_s_l(char *_Str,const char *_Delim,char **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcat_s(char *_Dst, rsize_t _SizeInBytes, const char * _Src);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) strnlen_s(const char * _src, size_t _count) {
    return _src ? strnlen(_src, _count) : 0;
  }

  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memmove_s(void *_dest,size_t _numberOfElements,const void *_src,size_t _count);


  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) wcstok_s(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcserror_s(wchar_t *_Buf,size_t _SizeInWords,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) __wcserror_s(wchar_t *_Buffer,size_t _SizeInWords,const wchar_t *_ErrMsg);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s(wchar_t *_Dst,size_t _DstSizeInWords,wchar_t _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s(wchar_t *_Str,size_t _SizeInWords,wchar_t _Val);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s(wchar_t *_Str,size_t _SizeInWords);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s_l(wchar_t *_Str,size_t _SizeInWords,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s(wchar_t *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s_l(wchar_t *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t *_Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncat_s(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncat_s_l(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount, _locale_t _Locale);
 
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcstok_s_l(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val, size_t _Count,_locale_t _Locale);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) wcsnlen_s(const wchar_t * _src, size_t _count) {
    return _src ? wcsnlen(_src, _count) : 0;
  }
# 195 "C:/msys64/ucrt64/include/string.h" 2 3
# 11 "C:/msys64/ucrt64/include/io.h" 2 3
# 21 "C:/msys64/ucrt64/include/io.h" 3
#pragma pack(push,_CRT_PACKING)





__attribute__ ((__dllimport__)) char* __attribute__((__cdecl__)) _getcwd (char*, int);

  typedef unsigned long _fsize_t;





  struct _finddata32_t {
    unsigned attrib;
    __time32_t time_create;
    __time32_t time_access;
    __time32_t time_write;
    _fsize_t size;
    char name[260];
  };

  struct _finddata32i64_t {
    unsigned attrib;
    __time32_t time_create;
    __time32_t time_access;
    __time32_t time_write;
    __extension__ long long size;
    char name[260];
  };

  struct _finddata64i32_t {
    unsigned attrib;
    __time64_t time_create;
    __time64_t time_access;
    __time64_t time_write;
    _fsize_t size;
    char name[260];
  };

  struct __finddata64_t {
    unsigned attrib;
    __time64_t time_create;
    __time64_t time_access;
    __time64_t time_write;
    __extension__ long long size;
    char name[260];
  };
# 94 "C:/msys64/ucrt64/include/io.h" 3
  struct _wfinddata32_t {
    unsigned attrib;
    __time32_t time_create;
    __time32_t time_access;
    __time32_t time_write;
    _fsize_t size;
    wchar_t name[260];
  };

  struct _wfinddata32i64_t {
    unsigned attrib;
    __time32_t time_create;
    __time32_t time_access;
    __time32_t time_write;
    __extension__ long long size;
    wchar_t name[260];
  };

  struct _wfinddata64i32_t {
    unsigned attrib;
    __time64_t time_create;
    __time64_t time_access;
    __time64_t time_write;
    _fsize_t size;
    wchar_t name[260];
  };

  struct _wfinddata64_t {
    unsigned attrib;
    __time64_t time_create;
    __time64_t time_access;
    __time64_t time_write;
    __extension__ long long size;
    wchar_t name[260];
  };
# 187 "C:/msys64/ucrt64/include/io.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _access(const char *_Filename,int _AccessMode);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _access_s(const char *_Filename,int _AccessMode);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _chmod(const char *_Filename,int _Mode);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _chsize(int _FileHandle,long _Size) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _chsize_s (int _FileHandle,long long _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _close(int _FileHandle);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _commit(int _FileHandle);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _creat(const char *_Filename,int _PermissionMode) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _dup(int _FileHandle);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _dup2(int _FileHandleSrc,int _FileHandleDst);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _eof(int _FileHandle);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _filelength(int _FileHandle);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _findfirst32(const char *_Filename,struct _finddata32_t *_FindData);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _findnext32(intptr_t _FindHandle,struct _finddata32_t *_FindData);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _findclose(intptr_t _FindHandle);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isatty(int _FileHandle);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _locking(int _FileHandle,int _LockMode,long _NumOfBytes);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _lseek(int _FileHandle,long _Offset,int _Origin);
  _off64_t lseek64(int fd,_off64_t offset, int whence);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _mktemp(char *_TemplateName) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _mktemp_s (char *_TemplateName,size_t _Size);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _pipe(int *_PtHandles,unsigned int _PipeSize,int _TextMode);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _read(int _FileHandle,void *_DstBuf,unsigned int _MaxCharCount);
# 223 "C:/msys64/ucrt64/include/io.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _setmode(int _FileHandle,int _Mode);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _tell(int _FileHandle);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _umask(int _Mode) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _umask_s (int _NewMode,int *_OldMode);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _write(int _FileHandle,const void *_Buf,unsigned int _MaxCharCount);

  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _filelengthi64(int _FileHandle);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _findfirst32i64(const char *_Filename,struct _finddata32i64_t *_FindData);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _findfirst64(const char *_Filename,struct __finddata64_t *_FindData);



  intptr_t __attribute__((__cdecl__)) _findfirst64i32(const char *_Filename,struct _finddata64i32_t *_FindData);
# 254 "C:/msys64/ucrt64/include/io.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _findnext32i64(intptr_t _FindHandle,struct _finddata32i64_t *_FindData);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _findnext64(intptr_t _FindHandle,struct __finddata64_t *_FindData);
  int __attribute__((__cdecl__)) _findnext64i32(intptr_t _FindHandle,struct _finddata64i32_t *_FindData);
# 275 "C:/msys64/ucrt64/include/io.h" 3
  __extension__ long long __attribute__((__cdecl__)) _lseeki64(int _FileHandle,long long _Offset,int _Origin);
  __extension__ long long __attribute__((__cdecl__)) _telli64(int _FileHandle);



  int __attribute__((__cdecl__)) chdir (const char *) ;
  char *__attribute__((__cdecl__)) getcwd (char *, int) ;
  int __attribute__((__cdecl__)) mkdir (const char *) ;
  char *__attribute__((__cdecl__)) mktemp(char *) ;
  int __attribute__((__cdecl__)) rmdir (const char*) ;
  int __attribute__((__cdecl__)) chmod (const char *, int) ;



  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _sopen_s(int *_FileHandle,const char *_Filename,int _OpenFlag,int _ShareFlag,int _PermissionMode);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _open(const char *_Filename,int _OpenFlag,...) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _sopen(const char *_Filename,int _OpenFlag,int _ShareFlag,...) ;



  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _waccess(const wchar_t *_Filename,int _AccessMode);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _waccess_s (const wchar_t *_Filename,int _AccessMode);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wchmod(const wchar_t *_Filename,int _Mode);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcreat(const wchar_t *_Filename,int _PermissionMode) ;
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wfindfirst32(const wchar_t *_Filename,struct _wfinddata32_t *_FindData);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wfindnext32(intptr_t _FindHandle,struct _wfinddata32_t *_FindData);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wunlink(const wchar_t *_Filename);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wrename(const wchar_t *_OldFilename,const wchar_t *_NewFilename);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wmktemp(wchar_t *_TemplateName) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wmktemp_s (wchar_t *_TemplateName, size_t _SizeInWords);

  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wfindfirst32i64(const wchar_t *_Filename,struct _wfinddata32i64_t *_FindData);
  intptr_t __attribute__((__cdecl__)) _wfindfirst64i32(const wchar_t *_Filename,struct _wfinddata64i32_t *_FindData);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wfindfirst64(const wchar_t *_Filename,struct _wfinddata64_t *_FindData);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wfindnext32i64(intptr_t _FindHandle,struct _wfinddata32i64_t *_FindData);
  int __attribute__((__cdecl__)) _wfindnext64i32(intptr_t _FindHandle,struct _wfinddata64i32_t *_FindData);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wfindnext64(intptr_t _FindHandle,struct _wfinddata64_t *_FindData);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wsopen_s(int *_FileHandle,const wchar_t *_Filename,int _OpenFlag,int _ShareFlag,int _PermissionFlag);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wopen(const wchar_t *_Filename,int _OpenFlag,...) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wsopen(const wchar_t *_Filename,int _OpenFlag,int _ShareFlag,...) ;



  int __attribute__((__cdecl__)) __lock_fhandle(int _Filehandle);
  void __attribute__((__cdecl__)) _unlock_fhandle(int _Filehandle);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _get_osfhandle(int _FileHandle);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _open_osfhandle(intptr_t _OSFileHandle,int _Flags);


  int __attribute__((__cdecl__)) access(const char *_Filename,int _AccessMode) ;
  int __attribute__((__cdecl__)) chmod(const char *_Filename,int _AccessMode) ;
  int __attribute__((__cdecl__)) chsize(int _FileHandle,long _Size) ;
  int __attribute__((__cdecl__)) close(int _FileHandle) ;
  int __attribute__((__cdecl__)) creat(const char *_Filename,int _PermissionMode) ;
  int __attribute__((__cdecl__)) dup(int _FileHandle) ;
  int __attribute__((__cdecl__)) dup2(int _FileHandleSrc,int _FileHandleDst) ;
  int __attribute__((__cdecl__)) eof(int _FileHandle) ;
  long __attribute__((__cdecl__)) filelength(int _FileHandle) ;
  int __attribute__((__cdecl__)) isatty(int _FileHandle) ;
  int __attribute__((__cdecl__)) locking(int _FileHandle,int _LockMode,long _NumOfBytes) ;
  long __attribute__((__cdecl__)) lseek(int _FileHandle,long _Offset,int _Origin) ;
  char *__attribute__((__cdecl__)) mktemp(char *_TemplateName) ;
  int __attribute__((__cdecl__)) open(const char *_Filename,int _OpenFlag,...) ;
  int __attribute__((__cdecl__)) read(int _FileHandle,void *_DstBuf,unsigned int _MaxCharCount) ;
  int __attribute__((__cdecl__)) setmode(int _FileHandle,int _Mode) ;
  int __attribute__((__cdecl__)) sopen(const char *_Filename,int _OpenFlag,int _ShareFlag,...) ;
  long __attribute__((__cdecl__)) tell(int _FileHandle) ;
  int __attribute__((__cdecl__)) umask(int _Mode) ;
  int __attribute__((__cdecl__)) write(int _Filehandle,const void *_Buf,unsigned int _MaxCharCount) ;
# 492 "C:/msys64/ucrt64/include/io.h" 3
#pragma pack(pop)
# 11 "C:/msys64/ucrt64/include/unistd.h" 2 3
# 1 "C:/msys64/ucrt64/include/process.h" 1 3
# 10 "C:/msys64/ucrt64/include/process.h" 3
# 1 "C:/msys64/ucrt64/include/corecrt_startup.h" 1 3
# 16 "C:/msys64/ucrt64/include/corecrt_startup.h" 3
typedef enum _crt_app_type {
    _crt_unknown_app,
    _crt_console_app,
    _crt_gui_app
} _crt_app_type;

__attribute__ ((__dllimport__)) _crt_app_type __attribute__((__cdecl__)) _query_app_type(void);
__attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _set_app_type(_crt_app_type _Type);

typedef enum _crt_argv_mode {
    _crt_argv_no_arguments,
    _crt_argv_unexpanded_arguments,
    _crt_argv_expanded_arguments,
} _crt_argv_mode;

__attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _configure_narrow_argv(_crt_argv_mode mode);
__attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _configure_wide_argv(_crt_argv_mode mode);

__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _initialize_narrow_environment(void);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _initialize_wide_environment(void);

__attribute__ ((__dllimport__)) char** __attribute__((__cdecl__)) _get_initial_narrow_environment(void);
__attribute__ ((__dllimport__)) wchar_t** __attribute__((__cdecl__)) _get_initial_wide_environment(void);

__attribute__ ((__dllimport__)) char* __attribute__((__cdecl__)) _get_narrow_winmain_command_line(void);
__attribute__ ((__dllimport__)) wchar_t* __attribute__((__cdecl__)) _get_wide_winmain_command_line(void);

__attribute__ ((__dllimport__)) char **__attribute__((__cdecl__)) __p__acmdln(void);


__attribute__ ((__dllimport__)) wchar_t **__attribute__((__cdecl__)) __p__wcmdln(void);


typedef void (__attribute__((__cdecl__)) *_PVFV)(void);
typedef int (__attribute__((__cdecl__)) *_PIFV)(void);
typedef void (__attribute__((__cdecl__)) *_PVFI)(int);

__attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _initterm(_PVFV* _First, _PVFV* _Last);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _initterm_e(_PIFV* _First, _PIFV* _Last);

typedef struct _onexit_table_t {
    _PVFV* _first;
    _PVFV* _last;
    _PVFV* _end;
} _onexit_table_t;

typedef int (__attribute__((__cdecl__)) *_onexit_t)(void);

__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _initialize_onexit_table(_onexit_table_t*);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _register_onexit_function(_onexit_table_t*,_onexit_t);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _execute_onexit_table(_onexit_table_t*);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _crt_atexit(_PVFV func);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _crt_at_quick_exit(_PVFV func);
# 11 "C:/msys64/ucrt64/include/process.h" 2 3


# 1 "C:/msys64/ucrt64/include/sys/types.h" 1 3
# 43 "C:/msys64/ucrt64/include/sys/types.h" 3
typedef unsigned short _ino_t;

typedef unsigned short ino_t;





typedef unsigned int _dev_t;

typedef unsigned int dev_t;
# 62 "C:/msys64/ucrt64/include/sys/types.h" 3
__extension__
typedef long long _pid_t;




typedef _pid_t pid_t;





typedef unsigned short _mode_t;


typedef _mode_t mode_t;






typedef unsigned int useconds_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};





__extension__
typedef unsigned long long _sigset_t;
# 14 "C:/msys64/ucrt64/include/process.h" 2 3
# 32 "C:/msys64/ucrt64/include/process.h" 3
  typedef void (__attribute__((__cdecl__)) *_beginthread_proc_type)(void *);
  typedef unsigned (__attribute__((__stdcall__)) *_beginthreadex_proc_type)(void *);

  __attribute__ ((__dllimport__)) uintptr_t __attribute__((__cdecl__)) _beginthread(_beginthread_proc_type _StartAddress,unsigned _StackSize,void *_ArgList);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _endthread(void) __attribute__ ((__noreturn__));
  __attribute__ ((__dllimport__)) uintptr_t __attribute__((__cdecl__)) _beginthreadex(void *_Security,unsigned _StackSize,_beginthreadex_proc_type _StartAddress,void *_ArgList,unsigned _InitFlag,unsigned *_ThrdAddr);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _endthreadex(unsigned _Retval) __attribute__ ((__noreturn__));



  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) exit(int _Code) __attribute__ ((__noreturn__));
  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _exit(int _Code) __attribute__ ((__noreturn__));

  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) quick_exit(int _Code) __attribute__ ((__noreturn__));




  void __attribute__((__cdecl__)) _Exit(int) __attribute__ ((__noreturn__));






       

  void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) abort(void);
       



  typedef void (__attribute__((__stdcall__)) *_tls_callback_type)(void*,unsigned long,void*);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _register_thread_local_exe_atexit_callback(_tls_callback_type callback);

  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _cexit(void);
  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _c_exit(void);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _getpid(void);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _cwait(int *_TermStat,intptr_t _ProcHandle,int _Action);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execl(const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execle(const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execlp(const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execlpe(const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execv(const char *_Filename,const char *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execve(const char *_Filename,const char *const *_ArgList,const char *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execvp(const char *_Filename,const char *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execvpe(const char *_Filename,const char *const *_ArgList,const char *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnl(int _Mode,const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnle(int _Mode,const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnlp(int _Mode,const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnlpe(int _Mode,const char *_Filename,const char *_ArgList,...);
# 95 "C:/msys64/ucrt64/include/process.h" 3
  int __attribute__((__cdecl__)) system(const char *_Command);




  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecl(const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecle(const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexeclp(const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexeclpe(const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecv(const wchar_t *_Filename,const wchar_t *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecve(const wchar_t *_Filename,const wchar_t *const *_ArgList,const wchar_t *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecvp(const wchar_t *_Filename,const wchar_t *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecvpe(const wchar_t *_Filename,const wchar_t *const *_ArgList,const wchar_t *const *_Env);
# 124 "C:/msys64/ucrt64/include/process.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wsystem(const wchar_t *_Command);




  intptr_t __attribute__((__cdecl__)) _loaddll(char *_Filename);
  int __attribute__((__cdecl__)) _unloaddll(intptr_t _Handle);
  int (__attribute__((__cdecl__)) *__attribute__((__cdecl__)) _getdllprocaddr(intptr_t _Handle,char *_ProcedureName,intptr_t _Ordinal))(void);
# 161 "C:/msys64/ucrt64/include/process.h" 3
  int __attribute__((__cdecl__)) getpid(void) ;



  intptr_t __attribute__((__cdecl__)) cwait(int *_TermStat,intptr_t _ProcHandle,int _Action) ;

  int __attribute__((__cdecl__)) execl(const char *_Filename,const char *_ArgList,...) ;
  int __attribute__((__cdecl__)) execle(const char *_Filename,const char *_ArgList,...) ;
  int __attribute__((__cdecl__)) execlp(const char *_Filename,const char *_ArgList,...) ;
  int __attribute__((__cdecl__)) execlpe(const char *_Filename,const char *_ArgList,...) ;






  intptr_t __attribute__((__cdecl__)) spawnl(int,const char *_Filename,const char *_ArgList,...) ;
  intptr_t __attribute__((__cdecl__)) spawnle(int,const char *_Filename,const char *_ArgList,...) ;
  intptr_t __attribute__((__cdecl__)) spawnlp(int,const char *_Filename,const char *_ArgList,...) ;
  intptr_t __attribute__((__cdecl__)) spawnlpe(int,const char *_Filename,const char *_ArgList,...) ;





  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) execv(const char *_Filename,char *const _ArgList[]) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) execve(const char *_Filename,char *const _ArgList[],char *const _Env[]) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) execvp(const char *_Filename,char *const _ArgList[]) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) execvpe(const char *_Filename,char *const _ArgList[],char *const _Env[]) ;






  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) spawnv(int,const char *_Filename,char *const _ArgList[]) ;
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) spawnve(int,const char *_Filename,char *const _ArgList[],char *const _Env[]) ;
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) spawnvp(int,const char *_Filename,char *const _ArgList[]) ;
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) spawnvpe(int,const char *_Filename,char *const _ArgList[],char *const _Env[]) ;
# 12 "C:/msys64/ucrt64/include/unistd.h" 2 3
# 1 "C:/msys64/ucrt64/include/getopt.h" 1 3
# 22 "C:/msys64/ucrt64/include/getopt.h" 3
extern int optind;
extern int optopt;
extern int opterr;


extern char *optarg;

extern int getopt(int nargc, char * const *nargv, const char *options);
# 13 "C:/msys64/ucrt64/include/unistd.h" 2 3
# 44 "C:/msys64/ucrt64/include/unistd.h" 3
       

unsigned int __attribute__((__cdecl__)) sleep (unsigned int);
       




int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) usleep(useconds_t);







int ftruncate(int, off32_t);
int ftruncate64(int, off64_t);
int truncate(const char *, off32_t);
int truncate64(const char *, off64_t);
# 93 "C:/msys64/ucrt64/include/unistd.h" 3
  void __attribute__((__cdecl__)) swab(char *_Buf1,char *_Buf2,int _SizeInBytes) ;
# 107 "C:/msys64/ucrt64/include/unistd.h" 3
# 1 "C:/msys64/ucrt64/include/pthread_unistd.h" 1 3
# 108 "C:/msys64/ucrt64/include/unistd.h" 2 3
# 3 "main.c" 2
# 1 "Motor.h" 1



# 1 "C:/msys64/ucrt64/lib/gcc/x86_64-w64-mingw32/14.2.0/include/stdint.h" 1 3 4
# 9 "C:/msys64/ucrt64/lib/gcc/x86_64-w64-mingw32/14.2.0/include/stdint.h" 3 4
# 1 "C:/msys64/ucrt64/include/stdint.h" 1 3 4
# 32 "C:/msys64/ucrt64/include/stdint.h" 3 4
# 1 "C:/msys64/ucrt64/lib/gcc/x86_64-w64-mingw32/14.2.0/include/stddef.h" 1 3 4
# 1 "C:/msys64/ucrt64/include/stddef.h" 1 3 4
# 18 "C:/msys64/ucrt64/include/stddef.h" 3 4
  __attribute__ ((__dllimport__)) extern int *__attribute__((__cdecl__)) _errno(void);

  errno_t __attribute__((__cdecl__)) _set_errno(int _Value);
  errno_t __attribute__((__cdecl__)) _get_errno(int *_Value);


  __attribute__ ((__dllimport__)) extern unsigned long __attribute__((__cdecl__)) __threadid(void);

  __attribute__ ((__dllimport__)) extern uintptr_t __attribute__((__cdecl__)) __threadhandle(void);
# 2 "C:/msys64/ucrt64/lib/gcc/x86_64-w64-mingw32/14.2.0/include/stddef.h" 2 3 4
# 426 "C:/msys64/ucrt64/lib/gcc/x86_64-w64-mingw32/14.2.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 437 "C:/msys64/ucrt64/lib/gcc/x86_64-w64-mingw32/14.2.0/include/stddef.h" 3 4
} max_align_t;
# 33 "C:/msys64/ucrt64/include/stdint.h" 2 3 4


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 10 "C:/msys64/ucrt64/lib/gcc/x86_64-w64-mingw32/14.2.0/include/stdint.h" 2 3 4
# 5 "Motor.h" 2



# 7 "Motor.h"
void Motor_Init(void);


void Motor_control(uint16_t sensorValue);
# 4 "main.c" 2
# 1 "Sensor.h" 1






extern uint16_t sensorValue;


void Sensor_Init(void);


uint16_t Sensor_Read(void);
# 5 "main.c" 2

int main(int argc, char const *argv[])
{
    Sensor_Init();
    Motor_Init;

    while (1)
    {

        sensorValue = Sensor_Read();


        Motor_control(sensorValue);


        sleep(2);
    }


    return 0;
}
