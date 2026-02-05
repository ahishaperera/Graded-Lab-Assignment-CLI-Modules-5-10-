#!/bin/bash

FILE="input.txt"

if [ ! -f "$FILE" ]; then
    echo "Error: input.txt not found."
    exit 1
fi

# Convert text to one word per line
tr -s ' ' '\n' < "$FILE" > words.txt

# Longest word
awk '{ print length, $0 }' words.txt | sort -nr | head -1 | cut -d' ' -f2-
echo "Longest word displayed above"

# Shortest word
awk '{ print length, $0 }' words.txt | sort -n | head -1 | cut -d' ' -f2-
echo "Shortest word displayed above"

# Average word length
awk '{ total += length; count++ } END { print "Average word length:", total/count }' words.txt

# Total unique words
sort words.txt | uniq | wc -l | awk '{ print "Total unique words:", $1 }'
