#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <pthread.h>
#include <string.h>

// 存储进程信息
typedef struct {
    pid_t pid;
    int suspend_time;
    int resume_time;
} ProcessInfo;

// 获取所有匹配的 PID
int get_pids_by_name(const char *name, pid_t *pids, size_t max_pids) {
    char command[256];
    snprintf(command, sizeof(command), "pgrep %s", name);
    FILE *fp = popen(command, "r");
    if (!fp) {
        perror("popen failed");
        return -1;
    }

    size_t count = 0;
    char buffer[16];
    while (fgets(buffer, sizeof(buffer), fp) != NULL && count < max_pids) {
        pids[count++] = atoi(buffer);
    }

    pclose(fp);
    return count; // 返回匹配到的 PID 数量
}

// 单个线程控制一个进程
void *control_cpu(void *arg) {
    ProcessInfo *process = (ProcessInfo *)arg;

    while (1) {
        printf("Suspending process %d\n", process->pid);
        if (kill(process->pid, SIGSTOP) != 0) {
            perror("Failed to suspend process");
            pthread_exit(NULL);
        }

        sleep(process->suspend_time);

        printf("Resuming process %d\n", process->pid);
        if (kill(process->pid, SIGCONT) != 0) {
            perror("Failed to resume process");
            pthread_exit(NULL);
        }

        sleep(process->resume_time);
    }
    return NULL;
}

int main(int argc, char *argv[]) {
    if (argc < 4) {
        fprintf(stderr, "Usage: %s <process_name1> [process_name2 ...] <suspend_time> <resume_time>\n", argv[0]);
        return EXIT_FAILURE;
    }

    int suspend_time = atoi(argv[argc - 2]);
    int resume_time = atoi(argv[argc - 1]);
    int process_count = argc - 3;

    pid_t pids[1024];
    ProcessInfo processes[1024];
    pthread_t threads[1024];
    size_t thread_count = 0;

    for (int i = 0; i < process_count; i++) {
        const char *process_name = argv[i + 1];
        size_t num_pids = get_pids_by_name(process_name, pids, 1024);
        if (num_pids <= 0) {
            fprintf(stderr, "No processes found for %s\n", process_name);
            continue;
        }

        for (size_t j = 0; j < num_pids; j++) {
            processes[thread_count].pid = pids[j];
            processes[thread_count].suspend_time = suspend_time;
            processes[thread_count].resume_time = resume_time;

            if (pthread_create(&threads[thread_count], NULL, control_cpu, &processes[thread_count]) != 0) {
                perror("Failed to create thread");
                return EXIT_FAILURE;
            }
            thread_count++;
        }
    }

    // 等待所有线程
    for (size_t i = 0; i < thread_count; i++) {
        pthread_join(threads[i], NULL);
    }

    return 0;
}

