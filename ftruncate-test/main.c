#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/time.h>
#include <sys/stat.h>

#define NUM_WRITES 10000
#define WRITE_SIZE 256

int main() {
    int fd;
    ssize_t bytes_written;
    char buffer[WRITE_SIZE];
    struct timeval start_time, end_time;
    long total_time_us;

    for(int i = 0; i < WRITE_SIZE; i++) {
        buffer[i] = 'A' + (i % 26);
    }

    // ===========================
    // 第一部分：不使用 ftruncate
    // ===========================

    fd = openat(AT_FDCWD, "testfile", O_RDWR | O_CREAT | O_DSYNC, 0644);
    if(fd == -1) {
        perror("openat");
        return 1;
    }

    if(gettimeofday(&start_time, NULL) == -1) {
        perror("gettimeofday");
        close(fd);
        return 1;
    }

    for(int i = 0; i < NUM_WRITES; i++) {
        bytes_written = write(fd, buffer, WRITE_SIZE);
        if(bytes_written == -1) {
            perror("write");
            close(fd);
            return 1;
        }
    }

    if(gettimeofday(&end_time, NULL) == -1) {
        perror("gettimeofday");
        close(fd);
        return 1;
    }

    total_time_us = (end_time.tv_sec - start_time.tv_sec) * 1000000L +
                    (end_time.tv_usec - start_time.tv_usec);

    printf("不使用 ftruncate：\n");
    printf("总耗时：%ld 微秒\n", total_time_us);
    printf("平均每次写入耗时：%f 微秒\n", (double)total_time_us / NUM_WRITES);

    close(fd);

    // ===========================
    // 第二部分：使用 ftruncate
    // ===========================

    fd = openat(AT_FDCWD, "testfile_with_ftruncate", O_RDWR | O_CREAT | O_DSYNC, 0644);
    if(fd == -1) {
        perror("openat");
        return 1;
    }

    // 使用 ftruncate 设置文件长度为 1GB
    off_t file_size = (off_t)1024 * 1024 * 1024; // 1GB
    if(ftruncate(fd, file_size) == -1) {
        perror("ftruncate");
        close(fd);
        return 1;
    }

    // 将文件偏移量重置为文件开头
    if(lseek(fd, 0, SEEK_SET) == -1) {
        perror("lseek");
        close(fd);
        return 1;
    }

    if(gettimeofday(&start_time, NULL) == -1) {
        perror("gettimeofday");
        close(fd);
        return 1;
    }

    for(int i = 0; i < NUM_WRITES; i++) {
        bytes_written = write(fd, buffer, WRITE_SIZE);
        if(bytes_written == -1) {
            perror("write");
            close(fd);
            return 1;
        }
    }

    if(gettimeofday(&end_time, NULL) == -1) {
        perror("gettimeofday");
        close(fd);
        return 1;
    }

    total_time_us = (end_time.tv_sec - start_time.tv_sec) * 1000000L +
                    (end_time.tv_usec - start_time.tv_usec);

    printf("使用 ftruncate：\n");
    printf("总耗时：%ld 微秒\n", total_time_us);
    printf("平均每次写入耗时：%f 微秒\n", (double)total_time_us / NUM_WRITES);

    close(fd);

    return 0;
}
