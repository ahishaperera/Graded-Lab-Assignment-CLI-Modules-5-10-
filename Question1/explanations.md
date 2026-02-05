### Command: cd~
Changed to my home directory to create the shell script in my own user space.
### Command: mkdir Question1
Created a directory named Question1 to organize files related to this question.
### Command: cd Question1
Navigated into the Question1 directory to create and store the script.
### Command: touch analyze.sh
Created an empty shell script file named analyze.sh.
### Command: nano analyze.sh
opening the script in nano
### Command: chmod +x analyze.sh
Changed file permissions to make analyze.sh executable.
### Command: ./analyze.sh
Executed the script without arguments, which correctly displayed an error message.
### Command: echo "This is a test file" > test.txt        ./analyze.sh test.txt
Ran the script with a file argument. The script displayed the number of lines, words, and characters using the wc command.
### Command: ./analyze.sh .
Ran the script on a directory. It displayed the total number of files and the number of .txt files within the directory.

