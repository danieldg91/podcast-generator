#!/bin/bash

echo "======================================="

git config --global user.name "${ GITHUB_ACTOR }" #Keep track of who is running action. 
git config --global user.email "${ INPUT_EMAIL }" #
git config --global add safe.directory /github/workspace/ #Add to safelist allows git operations here / running workflows.

#execute python and run application to generate content
python3 /urs/bin/feed.py 

#send things back to server
git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "======================================="








