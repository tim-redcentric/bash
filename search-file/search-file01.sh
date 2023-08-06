#!/bin/bash

path='/home/timsamanchi/p/kaplan'
key_word="prod_fqdn"
file_name='*.tfvars'
env='prd'

file_array=()
file_array=($(find "$path" -type f -name "$file_name" | grep "$env"))

for file in "${file_array[@]}"; do
    while read -r line; do
        captured_string=$(echo "$line" | grep "$key_word")
        if [ -n "$captured_string" ]; then
            echo -e "$captured_string"  
        fi
    done < "$file"
done
