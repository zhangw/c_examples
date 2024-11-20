#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

int main(int argc, char** argv)
{
    FILE* it;
    it = fopen(*argv, "r");
    printf("fileno(FILE *): %d\n", fileno(it));
    size_t compact_fileno_offset = sizeof(int) + 13 * sizeof(void *);
    size_t _fileno_offset = offsetof(FILE, _fileno);
    size_t _IO_read_ptr_offset = offsetof(FILE, _IO_read_ptr);
    printf("_IO_read_ptr_offset: %zu, _filno_offset: %zu\n", _IO_read_ptr_offset, _fileno_offset);
    printf("align size of _fileno: %zu\n", _fileno_offset - compact_fileno_offset);
    unsigned long fileno_ptr = ((unsigned long)it) + _fileno_offset;
    printf("fileno by ptr: %d\n", *(int *)fileno_ptr);
    fclose(it);
    return 0;
}
