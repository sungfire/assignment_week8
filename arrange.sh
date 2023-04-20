#!/bin/bash


for file in files/*; do
    file_name=$(basename "$file")
    first_letter=${file_name:0:1}
    if [[ "$first_letter" =~ [a-z] ]]; then
        mv "$file" "$first_letter"/
    fi
done