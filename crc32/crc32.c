#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <smmintrin.h>

static inline uint64_t rdtsc() {
    uint32_t lo, hi;
    __asm__ volatile ("rdtsc" : "=a"(lo), "=d"(hi));
    return ((uint64_t)hi << 32) | lo;
}

#define lj_crc32_u32 _mm_crc32_u32
#define lj_crc32_u64 _mm_crc32_u64

static const uint64_t* cast_uint64p(const char* str)
{
  return (const uint64_t*)(void*)str;
}

static const uint32_t* cast_uint32p(const char* str)
{
  return (const uint32_t*)(void*)str;
}

static uint32_t hash_sparse_4_16(uint64_t seed, const char* str, uint32_t len)
{
  uint64_t v1, v2, h;

  if (len >= 8) {
    v1 = *cast_uint64p(str);
    v2 = *cast_uint64p(str + len - 8);
  } else {
    v1 = *cast_uint32p(str);
    v2 = *cast_uint32p(str + len - 4);
  }

  h = lj_crc32_u32(0, len ^ seed);
  h = lj_crc32_u64(h, v1);
  h = lj_crc32_u64(h, v2);
  return h;
}


#define SEED 0x82F63B78
int main() {
  char * ips[10] = {"192.168.31.200", "192.168.31.201", "192.168.31.202", "192.168.31.203", "192.168.31.204", "192.168.31.205", "192.168.31.206", "192.168.31.207", "192.168.31.208", "192.168.31.209"};
  int i = 9;
  do{
      char * ip = ips[i];
      uint64_t start = rdtsc();
      uint32_t ip_uint32 = hash_sparse_4_16(SEED, ip, strlen(ip));
      uint64_t end = rdtsc();
      printf("IP: %s -> hash_sparse_4_16: 0x%08X (%u)\n", ip, ip_uint32, ip_uint32);
      printf("Execution cycles: %llu\n", end - start);
  }while(i--);
  return 0;
}
