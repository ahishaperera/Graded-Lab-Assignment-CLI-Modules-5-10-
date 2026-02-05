### cd Question10	
Changes the working directory to Question 10 folder.

### gcc signal_handling.c -o signal_handling	
Compiles the C program into an executable file.

### ./signal_handling	
Executes the compiled program.

### sleep 5	
Pauses execution of the child process for 5 seconds.

### sleep 10	
Pauses execution of the second child process for 10 seconds.

### kill(getppid(), SIGTERM)	
Sends SIGTERM signal to the parent process.

### kill(getppid(), SIGINT)	
Sends SIGINT signal to the parent process.

### signal(SIGTERM, handler)	
Registers a custom handler for SIGTERM.

### signal(SIGINT, handler)	
Registers a custom handler for SIGINT.

### pause()	
Suspends the parent process until a signal is received.

### fork()	
Creates a new child process.
