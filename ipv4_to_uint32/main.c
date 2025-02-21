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

uint32_t v1_ip_to_uint32(const char *ip) {
    uint32_t result = 0;
    uint8_t octet = 0;

    for (; *ip; ip++) {
        if (*ip == '.') {
            result = (result << 8) | octet;
            octet = 0;
        } else {
            octet = (octet << 3) + (octet << 1) + (*ip - '0');
        }
    }
    result = (result << 8) | octet;

    return result;
}

/**
*  // Whatever using octet*10, or octet<<3 + octet<<1, both would be optimized by gcc as follow:
*  0x0000000000401088 <+72>:    lea    (%rax,%rax,4),%eax      // octet = octet + octet * 4
*  0x000000000040108b <+75>:    add    $0x1,%rdx
*  0x000000000040108f <+79>:    lea    -0x30(%rsi,%rax,2),%eax // octet = octet * 2, octet = octet + $rsi - '0'
*/

#ifdef USE_V1
#define FUNC_IP_TO_UINT32 v1_ip_to_uint32
#else
#define FUNC_IP_TO_UINT32 ip_to_uint32
#endif

#define STRINGIFY(x) #x
#define TOSTRING(x) STRINGIFY(x)

int main() {
  const char *ip = "192.168.13.120";
  printf("USE %s\n", TOSTRING(FUNC_IP_TO_UINT32));
  int i = 10;
  do {
      uint64_t start = rdtsc();
      uint32_t ip_uint32 = FUNC_IP_TO_UINT32(ip);
      uint64_t end = rdtsc();

      printf("IP: %s -> uint32: 0x%08X (%u)\n", ip, ip_uint32, ip_uint32);
      printf("Execution cycles: %llu\n", end - start);
  }while(i--);

  return 0;
}
