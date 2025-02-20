#include <stdio.h>
#include <stdint.h>

static inline uint64_t rdtsc() {
    uint32_t lo, hi;
    __asm__ volatile ("rdtsc" : "=a"(lo), "=d"(hi));
    return ((uint64_t)hi << 32) | lo;
}

uint32_t ip_to_uint32(const char *ip) {
    uint32_t result = 0;
    uint8_t octet = 0;

    for (; *ip; ip++) {
        if (*ip == '.') {
            result = (result << 8) | octet;
            octet = 0;
        } else {
            octet = octet * 10 + (*ip - '0');
        }
    }
    result = (result << 8) | octet;

    return result;
}

int main() {
    const char *ip = "192.168.13.120";

    uint64_t start = rdtsc();
    uint32_t ip_uint32 = ip_to_uint32(ip);
    uint64_t end = rdtsc();

    printf("IP: %s -> uint32: 0x%08X (%u)\n", ip, ip_uint32, ip_uint32);
    printf("Execution cycles: %llu\n", end - start);

    return 0;
}
