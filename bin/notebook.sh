#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Notebook
# @raycast.mode silent

# Get the full path of the target directory
target_dir='/Users/achillesschmelzer/projects/killthebuddha.pub'

# Check if the directory exists
if [ ! -d "$target_dir" ]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

cd "$target_dir"

osascript <<EOF
if application "Neovide" is running then
    do shell script "open -a Neovide"
else
    do shell script "neovide ."
end if
EOF
