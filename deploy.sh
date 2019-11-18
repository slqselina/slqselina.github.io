#!/bin/bash

git subtree add --prefix=public git@github.com:slqselina/slqselina.github.io.git master --squash     
git subtree pull -q -m"pull latest master `date "+%Y-%m-%d-%H%M%S"`" --prefix=public git@github.com:slqselina/slqselina.github.io.git master

# prepare public folder
rm -R public/*
git co public/CNAME
hugo -t hugo-future-imperfect

git status
# Add file and push
git add -A
git commit -a -m "Site Deploy for master `date "+%Y-%m-%d-%H%M%S"`"
git push origin hugo
git subtree push --prefix=public git@github.com:slqselina/slqselina.github.io.git master
