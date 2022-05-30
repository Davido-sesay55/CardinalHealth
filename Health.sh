#! /bin/bash

declare -A map

map["prac1"]="lab"

git init
git checkout -b DemoBranch
git add hello.txt
git commit -m "committed"

for i in "${!map[@]}"
do
        git remote add $i https://github.com/Koncept55/${map[$i]}.git
        git pull -u $i DemoBranch
done
