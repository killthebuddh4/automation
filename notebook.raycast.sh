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

# Create an AppleScript to open Terminal and run Neovim
osascript <<EOF
tell application "Terminal"
    if not (exists window 1) then
        do script ""
    end if
    activate
    set current settings of selected tab of window 1 to settings set "Basic"
    do script "cd \"$target_dir\" && nvim ." in window 1
end tell
EOF
