#include <unistd.h>
#include <errno.h>
#include <stdlib.h>
#include <stdio.h>
int main(int argc, char *argv[]){
  int parentid = getpid(), childpid;
  int fork_result = fork();
  switch(fork_result){
    case -1:
      printf("fork failed: %d\n", errno);
      return EXIT_FAILURE;
    case 0:
      //child process
      childpid = getpid();
      printf("child process %d\n", childpid);
      break;
    default:
      printf("parent process %d\n", parentid);
      break;
  }
  return EXIT_SUCCESS;
}
