#!/bin/bash
set -e

git config --global user.email "57582539+FoxeiZ@users.noreply.github.com."
git config --global user.name "foxeiz-bot"
git status
if [ -n "$(git status --porcelain)" ]; then
    git add .
    git commit -m "Update extensions repo"
    git push

#    curl https://purge.jsdelivr.net/gh/keiyoushi/extensions@repo/index.min.json
else
    echo "No changes to commit"
fi
