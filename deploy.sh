#!/bin/bash
TMPDIRNAME="`cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 6 | head -n 1`"
# Backup push
git add -v *
git commit -av -m "backup commit"
git push -v
# Build Jekyll site
jekyll build
# Move _site to tmp file
mkdir /tmp/$TMPDIRNAME
rsync -r ./_site/ /tmp/$TMPDIRNAME
rm -r ./_site
# checkout into gh-pages
git checkout gh-pages 
rm -r *
rsync -r /tmp/$TMPDIRNAME .
# commit and push changes
git commit -av -m "update gh-pages site on `date`"
git push -v
# check back into master
git checkout master
# Clear temp dir
rm -r /tmp/$TMPDIRNAME