#!/bin/bash

# Define the subdirectory names
subdir1="action"
subdir2="tests"

# Get the current working directory
cwd=$(pwd)

# Construct the source and destination directories
source_dir="$cwd/$subdir1/$subdir2"
dest_dir="$cwd"

# Check if the source directory exists
if [ -d "$source_dir" ]; then
    # Move the directory
    mv "$source_dir" "$dest_dir"

    if [ $? -eq 0 ]; then
        echo "Directory '$subdir2' has been moved to '$dest_dir' successfully."
    else
        echo "Failed to move the directory."
    fi
else
    echo "The source directory '$source_dir' does not exist."
fi