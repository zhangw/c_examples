#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>


void* alloc_executable_memory(size_t size) {
    void* ptr = mmap(0, size,
            PROT_READ | PROT_WRITE | PROT_EXEC,
            MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (ptr == (void*)-1) {
        perror("mmap");
        return NULL;
    }
    return ptr;
}

void emit_code_into_memory(unsigned char* m) {
    unsigned char code[] = {
            0x48, 0x89, 0xF2 /* .str size   mov rdx,rsi */
            ,0x48, 0x89, 0xFE /* .str        mov rsi,rdi */
            ,0x48, 0xC7, 0xC0, 0x01, 0x00, 0x00, 0x00 /* mov rax,0x1 */
            ,0x48, 0xC7, 0xC7, 0x01, 0x00, 0x00, 0x00 /* mov rdi,0x1 */
            ,0x0F, 0x05 /* syscall */
            ,0x48, 0xC7, 0xC0, 0x00, 0x00, 0x00, 0x00 /* mov rax,0x0 */
            ,0xC3 /* ret */
    };
    memcpy(m, code, sizeof(code));
}

const size_t SIZE = 256;
typedef int (*JittedFunc)(char *, int);

void run_from_rwx(char* str) {
    void* m = alloc_executable_memory(SIZE);
    emit_code_into_memory(m);

    JittedFunc func = m;
    char lf = '\n';
    strncat(str, &lf, 1);
    int result = func(str, strlen(str));
    printf("call jit code result:%d\n", result);
}

int main(int argc, char* argv[]){
    if (argc != 2) {
        printf("only 1 argument required\n");
        return -1;
    }
    run_from_rwx(argv[1]);
    return 0;
}
