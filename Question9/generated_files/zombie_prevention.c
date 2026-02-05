#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int num_children = 3;
    pid_t pid;

    for (int i = 0; i < num_children; i++) {
        pid = fork();

        if (pid < 0) {
            perror("fork failed");
            exit(1);
        } else if (pid == 0) {
            // Child process
            printf("Child PID: %d started\n", getpid());
            sleep(2);  // Simulate some work
            printf("Child PID: %d exiting\n", getpid());
            exit(0);
        }
        // Parent continues the loop
    }

    // Parent process waits for all children
    int status;
    pid_t wpid;
    while ((wpid = wait(&status)) > 0) {
        printf("Parent cleaned up child PID: %d\n", wpid);
    }

    printf("All children cleaned up. Parent exiting.\n");
    return 0;
}
