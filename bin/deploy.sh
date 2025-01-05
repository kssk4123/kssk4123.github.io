#!/bin/bash

DATE=$(date +%s)
cd ~/dev/githubpages/src
hugo --minify
cd ~/dev/githubpages/
git add -A
git commit -m "${DATE}"
git push
