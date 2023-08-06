#!/bin/bash

#my_file="/home/timsamanchi/p/bash/var-file02.txt"
# while read -r line; do
#     echo "$line"
# done < "$my_file"
# echo -e '\n ************************* \n'

# files=("/home/timsamanchi/p/bash/var-file01.txt" "/home/timsamanchi/p/bash/var-file02.txt")
# for file in "${files[@]}"; do
#     echo "processing $file"
#     cat "$file"
#     echo -e "\n ************************* \n"
# done

#path="/home/timsamanchi/p/terraform"

# capture="region"
# file_array=()
# file_array=($(find "~/p/" -type f -name "*.tfvars"))

# for file in "${file_array[@]}"; do
# #    echo -e "\nprocessing $file"
#     while read -r line; do
#         captured_string=$(echo "$line" | grep "$capture")
#         if [ -n "$captured_string" ]; then
#             echo -e "\nprocessing $file"
#             echo "captured_string: $captured_string"
#             echo -e "\n*************************"
#         fi
#     done < "$file"
# done


capture="region"
file_array=()
file_array=($(find "/home/timsamanchi/p/kaplan" -type f -name "*.tfvars"))
for file in "${file_array[@]}"; do
#    echo -e "\nprocessing $file"
    while read -r line; do
        captured_string=$(echo "$line" | grep 'prd' )
        if [ -n "$captured_string" ]; then
            echo -e "processing $file"
            #echo "captured_string: $captured_string"
            #echo -e "\n*************************"
        fi
    done < "$file"
    #echo -e "\n*************************"
done



