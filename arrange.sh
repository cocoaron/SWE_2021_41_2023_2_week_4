#!/bin/bash

DIR=$(pwd)
FILES="$DIR/files"

for file in $FILES/*; do

    filename=$(basename "$file")    
    # get first letter of filename
    letter=$(echo "$filename" | grep -o '^.')
    letter=$(echo "$letter" | tr '[:upper:]' '[:lower:]')
    
    if [ -d "$DIR/$letter" ]; then
        mv "$file" "$DIR/$letter/"
    fi
done