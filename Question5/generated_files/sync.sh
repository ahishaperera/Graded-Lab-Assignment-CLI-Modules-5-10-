#!/bin/bash

DIRA="$1"
DIRB="$2"

# Validate arguments
if [ ! -d "$DIRA" ] || [ ! -d "$DIRB" ]; then
    echo "Error: Both arguments must be directories."
    exit 1
fi

echo "Files only in $DIRA:"
comm -23 <(ls "$DIRA" | sort) <(ls "$DIRB" | sort)

echo "Files only in $DIRB:"
comm -13 <(ls "$DIRA" | sort) <(ls "$DIRB" | sort)

echo "Common files comparison:"
for file in $(comm -12 <(ls "$DIRA" | sort) <(ls "$DIRB" | sort))
do
    cmp "$DIRA/$file" "$DIRB/$file" >/dev/null \
    && echo "$file: identical" \
    || echo "$file: different"
done
