#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {

    int value = 0;
    pid_t pid = fork();
    if(pid == 0) {
        printf("Child process\n");
        exit(0);
    }else if(pid > 0) {
        printf("parent!\n");
        sleep(5);
    }
    wait(&value);
    printf("Process id {%d}\n", pid);
    printf("ola mundo\n");
    return 0;
}