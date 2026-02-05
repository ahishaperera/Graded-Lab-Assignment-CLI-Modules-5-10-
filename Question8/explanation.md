
### cd ~/Modules5-10/Question8
Navigate to Question 8 directory.

### mkdir testdir	
Create a sample directory for testing.

### echo "File 1" > file1.txt	
Creates a text file with sample content.

### mkdir -p "$DIR/backup"	
Creates backup/ folder if it doesn’t exist.

### for file in "$DIR"/*; do ... done	
Loop through all files in the directory.

### mv "$file" "$BACKUP" &	
Move the file into backup folder in background.

### echo "PID: $!"	
Prints the PID of the last background process.

### wait	
Waits for all background processes to finish before continuing.

### ls testdir/backup	
Lists files to verify they were moved successfully.

### chmod +x bg_move.sh	
Makes the script executable.

### ./bg_move.sh testdir	
Runs the script on the sample directory.
