#!/bin/bash

set -e

BRANCH=gh-pages
SOURCE_BRANCH=main
REPO=$(git config --get remote.origin.url)

# Stash any local changes
if ! git diff --quiet || ! git diff --cached --quiet; then
  echo "Stashing local changes..."
  git stash --include-untracked
fi

echo "Checking out orphan branch $BRANCH..."
git checkout --orphan $BRANCH

echo "Removing all files..."
git rm -rf . > /dev/null 2>&1 || true

echo "Restoring landing page files from $SOURCE_BRANCH..."
git show $SOURCE_BRANCH:landing.html > landing.html
git show $SOURCE_BRANCH:static/favicon.png > favicon.png
git show $SOURCE_BRANCH:static/logo.svg > logo.svg

git add landing.html favicon.png logo.svg

git commit -m "Deploy landing page to GitHub Pages"

echo "Pushing to $BRANCH branch..."
git push origin $BRANCH --force

echo "Switching back to previous branch..."
git checkout -

echo "Done! Your landing page is deployed to GitHub Pages." 