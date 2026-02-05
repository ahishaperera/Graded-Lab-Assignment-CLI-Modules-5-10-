### Command: mkdir <dirname>
Creates a new directory named <dirname> in the current path.

### Command: cd <dirname>
Changes the current working directory to <dirname>.

Script commands
### Command: tr -s ' ' '\n' < input.txt > words.txt
Converts spaces into newlines → creates one word per line in words.txt.

### Command: awk '{ print length, $0 }' words.txt
Prints each word along with its character length.

### Command: sort -nr
Sorts numerically in reverse order, so longest words appear first.

### Command: sort -n
Sorts numerically, so shortest words appear first.

### command: head -1
Displays only the first line from sorted output → gets the longest/shortest word.

### Command : cut -d' ' -f2-
Removes the first field (the length number), leaving only the word.

### Command: awk '{ total += length; count++ } END { print total/count }' words.txt
Calculates the average word length.

### Command: wc -l
Counts lines → number of unique words.
