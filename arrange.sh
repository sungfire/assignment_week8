#!/bin/bash


for file_path in files/*; do
    file_name=$(basename "$file_path")
    first_letter=${file_name:0:1}
    if [[ "$first_letter" =~ [a-z] ]]; then
        mv "$file_path" "$first_letter"/
    fi
done