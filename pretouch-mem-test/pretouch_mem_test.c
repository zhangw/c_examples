#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>

#define GB ((size_t)1024 * 1024 * 1024)


size_t get_page_size() {
    return (size_t)sysconf(_SC_PAGESIZE);
}

void pretouch_memory(char* start, char* end) {
    size_t page_size = get_page_size();
    for (volatile char *p = start; p < end; p += page_size) {
        *p = 0;
    }
}

int main(int argc, char** argv) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s the number of GB size, such as 1/2/4\n", argv[1]);
        return 1;
    }

    int base = atoi(argv[1]);
    if (base <= 0) {
        fprintf(stderr, "Invalid base value: %s\n", argv[1]);
        return 1;
    }

    size_t size = (size_t)base * GB;

    printf("Allocating %zu bytes of memory.\n", size);

    char *memory = (char *)mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

    if (memory == MAP_FAILED) {
        perror("Memory allocation with mmap failed");
        return 1;
    }

    printf("Memory allocated from %p to %p\n", (void*)memory, (void*)(memory + size));

    pretouch_memory(memory, memory + size);

    printf("Memory pretouch completed.\n");

    if (munmap(memory, size) != 0) {
        perror("Memory unmapping failed");
        return 1;
    }

    return 0;
}
