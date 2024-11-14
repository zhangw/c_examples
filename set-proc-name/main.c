#include <stdio.h>
#include <unistd.h>
#include <sys/prctl.h>

int main() {
    prctl(PR_SET_NAME, "main.exe", 0, 0, 0);
    char *new_program = "/usr/bin/tail";
    char *args[] = { "main.exe", "-f", "/dev/null", NULL };
    printf("进程名称已设置为main.exe，准备执行新的程序...\n");
    execvp(new_program, args);

    perror("execvp 失败");
    return 1;
}
