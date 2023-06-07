#!/bin/bash

file_name=$1
pattern="^.*!\[.*\]\(.*\).*$"

file_path=$(realpath "$file_name")
temp_file=$(mktemp)

while IFS= read -r line; 
do
    if [[ ! $line =~ $pattern ]]; 
    then
        echo "$line" >> "$temp_file"
    fi
done < "$file_path"

mv "$temp_file" "$file_path"


