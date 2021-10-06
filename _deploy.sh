#!/bin/sh

set -e

cd book-output

git config --local user.email "actions@github.com"
git config --local user.name "GitHub Actions"

ls | xargs rm -rf
git ls-files --deleted -z | xargs -0 git rm

cp -r ../_book/* ./
git add --all *
git commit -m "Update the book" || true
git reset $(git commit-tree HEAD^{tree} -m "Update the book")
git push -f -q origin gh-pages
