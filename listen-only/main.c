#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <signal.h>

#define PORT 10024

int server_fd;

void handle_sigint(int sig) {
    printf("Caught signal %d\n", sig);
    if (server_fd != -1) {
        close(server_fd);
        printf("Socket closed.\n");
    }
    exit(0);
}

int main() {
    struct sockaddr_in address;
    int opt = 1;
    int addrlen = sizeof(address);

    // 注册信号处理程序
    signal(SIGINT, handle_sigint);

    // 创建 socket 文件描述符
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
        perror("socket failed");
        exit(EXIT_FAILURE);
    }

    // 附加选项以便重用地址和端口
    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt, sizeof(opt))) {
        perror("setsockopt failed");
        close(server_fd);
        exit(EXIT_FAILURE);
    }

    // 设置地址和端口
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY; // 监听所有可用的接口
    address.sin_port = htons(PORT);

    // 绑定 socket 到地址和端口
    if (bind(server_fd, (struct sockaddr *)&address, sizeof(address)) < 0) {
        perror("bind failed");
        close(server_fd);
        exit(EXIT_FAILURE);
    }

    // 开始监听
    if (listen(server_fd, 3) < 0) {
        perror("listen failed");
        close(server_fd);
        exit(EXIT_FAILURE);
    }

    printf("Listening on port %d...\n", PORT);

    // 持续运行以维持监听状态
    while (1) {
        sleep(50);
    }

    return 0;
}
