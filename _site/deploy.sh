#!/bin/bash
# Backup push
git add --all -v *
git commit -a -m "backup commit"
git push
# Build Jekyll site
jekyll build
# Move to tmp file
mkdir /tmp/jekyll-site
rsync -P -r ./_site/ /tmp/jekyll-site
# checkout into gh-pages
git checkout gh-pages 
rsync -P -r /tmp/jekyll-site/ .
# commit and push changes
git commit -a -m "update gh-pages site on `date`"
git push
git checkout master
# Clear temp dir
rm -rI /tmp/jekyll-site