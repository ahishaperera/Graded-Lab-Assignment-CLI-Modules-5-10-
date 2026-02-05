### Command: cd ~ | mkdir Question4 | cd Question4
Created and navigated to the Question4 directory to create the email cleaning script.

### Command: nano emails.txt
Created a sample emails.txt file containing both valid and invalid email addresses for testing.

### Command: nano emailcleaner.sh
Wrote a shell script that filters valid and invalid emails using grep, and removes duplicates from the valid email list using sort and uniq.

### Command: chmod +x emailcleaner.sh
Made the emailcleaner.sh script executable.

### Command: ./emailcleaner.sh | cat valid.txt | cat invalid.txt
Executed the script. It correctly separated valid and invalid emails and removed duplicates from the valid email list.
