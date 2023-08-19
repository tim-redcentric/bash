#!/bin/bash

# Tim Samanchi - RedcentricPLC
# 17/08/2023

# gh and gitsome need to be installed before using this script
# chmod +x clone-all-repos.sh
# ./clone-all-repos.sh 

organization="YourOrganizationName"  # Replace with your organization name, example: Kaplan-Singapore

while read -r repo; do 
    git clone "https://github.com/$repo.git"; 
done < <(gh repos | grep -oE "$organization/.+\s+")
