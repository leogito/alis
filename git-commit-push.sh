#!/bin/bash
#set -e

git config --global user.email "leogito@mail.ru"
git config --global user.name "leogito"


echo "Checking for newer files online first"
git pull

# Below command will backup everything inside the project folder
git add --all .

# Give a comment to the commit if you want
echo "Write your commit comment"

read input

# Committing to the local repository with a message containing the time details and commit text

curtime=$(date)
git commit -m "Comment : $input on $curtime"

# Push the local files to github

git push -u origin master

echo "Git Push Done"
