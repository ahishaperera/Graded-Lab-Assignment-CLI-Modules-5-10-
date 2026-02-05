### cd Question9	
Navigate to Question 9 folder.

### nano zombie_prevention.c	
Opens a text editor to write the C program (not a Linux command for execution).

### gcc zombie_prevention.c -o zombie_prevention	
Compiles C code into an executable named zombie_prevention.

### ./zombie_prevention	
Runs the compiled program in the terminal.

### sleep 2 (inside program)	
Makes child process wait for 2 seconds to simulate work (Linux system call).

### getpid() (inside program)	
Gets PID of the process (Linux system call).

### wait(&status) (inside program)	
Parent waits for each child to terminate → prevents zombie processes.
