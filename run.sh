#!/bin/bash
clear
DIRECTORY_NAME="$1"
CURRENT_TIME=$(date +"%Y-%m-%d_%H:%M:%S")
if [ $# -eq 0 ]; then
    echo "Please give a name for directory"
    exit 1
elif [ -d "$DIRECTORY_NAME" ]; then
    echo "Directory '$DIRECTORY_NAME' already exists."
    exit 1
else
    mkdir "$DIRECTORY_NAME"
    echo "Create Directory called '$DIRECTORY_NAME'."
    cd "$DIRECTORY_NAME"
for i in {1..10}; do
    timestamp=$(date +"%Y-%m-%d_%H:%M:%S")
    touch "$timestamp.txt"
    sleep 2
done  
# github_file_url="https://raw.githubusercontent.com/GThashan/Shell-Scripting/main/$DIRECTORY_NAME/$timestamp.txt"
# wget "$github_file_url"
fi

