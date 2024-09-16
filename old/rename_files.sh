#!/bin/bash

# Check if correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory> <string>"
    exit 1
fi

directory=$1
prepend_string=$2

# Check if the provided directory exists
if [ ! -d "$directory" ]; then
    echo "Directory $directory does not exist."
    exit 1
fi

# Iterate through each file in the directory
for file in "$directory"/*; do
    if [ -f "$file" ]; then
        # Get the base name of the file
        base_name=$(basename "$file")
        # Construct the new name by prepending the string
        new_name="$directory/$prepend_string$base_name"
        # Rename the file
        mv "$file" "$new_name"
        echo "Renamed $file to $new_name"
    fi
done

