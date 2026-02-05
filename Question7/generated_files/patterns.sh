#!/bin/bash

FILE="input.txt"

# splitting the input file into words, one word per line.
tr -s ' ' '\n' < $FILE > words.txt

# Only vowels
grep -iE '^[aeiou]+$' words.txt > vowels.txt

# Only consonants
grep -iE '^[bcdfghjklmnpqrstvwxyz]+$' words.txt > consonants.txt

# Mixed words starting with consonant
grep -iE '^[bcdfghjklmnpqrstvwxyz]+[a-z]*[aeiou][a-z]*' words.txt > mixed.txt
