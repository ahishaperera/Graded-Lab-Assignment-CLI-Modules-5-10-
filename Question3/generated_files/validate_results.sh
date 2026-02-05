#!/bin/bash

FILE="marks.txt"

if [ ! -f "$FILE" ]; then
    echo "Error: marks.txt file not found."
    exit 1
fi

fail_one=0
pass_all=0

while IFS=',' read -r roll name m1 m2 m3
do
    fail_count=0

    if [ "$m1" -lt 33 ]; then
        fail_count=$((fail_count + 1))
    fi

    if [ "$m2" -lt 33 ]; then
        fail_count=$((fail_count + 1))
    fi

    if [ "$m3" -lt 33 ]; then
        fail_count=$((fail_count + 1))
    fi

    if [ "$fail_count" -eq 1 ]; then
        echo "Failed in exactly one subject: $roll $name"
        fail_one=$((fail_one + 1))
    elif [ "$fail_count" -eq 0 ]; then
        echo "Passed all subjects: $roll $name"
        pass_all=$((pass_all + 1))
    fi
done < "$FILE"

echo "Number of students failed in exactly one subject: $fail_one"
echo "Number of students passed all subjects: $pass_all"
