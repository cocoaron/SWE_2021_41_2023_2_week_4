#!/bin/bash

DIR=$(pwd)
FILES="$DIR/files"

# loop and get each files
for file in $FILES/*; do

    filename=$(basename "$file")    
    # get first letter of filename
    letter=$(echo "$filename" | grep -o '^.')
    letter=${letter,,}
    
    if [ -d "$DIR/$letter" ]; then
        mv "$file" "$DIR/$letter/"
    fi
done