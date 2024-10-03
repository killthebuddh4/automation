#!/bin/bash

# Get the full path of the target directory
target_dir='/Users/achillesschmelzer/projects/killthebuddha.pub'

# Check if the directory exists
if [ ! -d "$target_dir" ]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

cd "$target_dir"

nvim .

cd -


