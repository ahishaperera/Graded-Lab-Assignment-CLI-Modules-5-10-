#!/bin/bash

DIR="$1"

if [ ! -d "$DIR" ]; then
    echo "Error: Directory $DIR does not exist."
    exit 1
fi

BACKUP="$DIR/backup"
mkdir -p "$BACKUP"

for file in "$DIR"/*; do
    if [ -f "$file" ]; then
        mv "$file" "$BACKUP" &
        echo "Moving $file in background, PID: $!"
    fi
done

wait
echo "All files have been moved."
