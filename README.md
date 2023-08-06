# bash
for all my bash scripts

## gh commands
```
gh repos  > gh_repos_output.txt
cat gh_repos_output.txt | grep Kaplan-Singapore

cat gh_repos_output.txt | grep -E 'Kaplan-Singapore/(\S+)'
cat gh_repos_output.txt | grep -oE '[\d\d]+\.\s+(Kaplan-Singapore/\S+)' > Kaplan-Singapore-repos-clean.txt
cat gh_repos_output.txt | grep -oE '[0-9]+\.\s+(Kaplan-Singapore/\S+)' | grep -oE Kaplan-Singapore/.+

main installation line
while read -r repo; do git clone "https://github.com/$repo.git"; done < <(cat gh_repos_output.txt | grep -oE 'Kaplan-Singapore/.+\s+')
while read -r repo; do git clone "https://github.com/$repo.git"; done < <(gh repos | grep -oE 'Kaplan-Singapore/.+\s+')
```

## to search for a key word in certain file name
```
find "/home/timsamanchi/p/kaplan" -type f -name "*.tfvars" | grep 'prd'
```

