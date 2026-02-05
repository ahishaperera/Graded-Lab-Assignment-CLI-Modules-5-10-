#!/bin/bash

# Extract valid emails
grep -Ei '^[a-z0-9]+@[a-z]+\.com$' emails.txt > valid.txt

# Extract invalid emails
grep -Eiv '^[a-z0-9]+@[a-z]+\.com$' emails.txt > invalid.txt

# Remove duplicates from valid.txt
sort valid.txt | uniq > temp.txt
mv temp.txt valid.txt
