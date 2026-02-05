### tr -s ' ' '\n' < input.txt > words.txt
Converts spaces to newlines → one word per line for correct grep matching.

### grep -iE '^[aeiou]+$' words.txt > vowels.txt
Finds words made only of vowels (case-insensitive).

### grep -iE '^[bcdfghjklmnpqrstvwxyz]+$' words.txt > consonants.txt
Finds words made only of consonants (case-insensitive).

### grep -iE '^[bcdfghjklmnpqrstvwxyz].*[aeiou]' words.txt > mixed.txt
Finds words starting with a consonant and containing at least one vowel.

### cat vowels.txt / cat consonants.txt / cat mixed.txt
Displays the contents of the files to verify output.
