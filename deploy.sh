#!/bin/bash
# Backup push
git add -v *
git commit -av -m "backup commit"
git push -v
# Build Jekyll site
jekyll build
# Move to tmp file
mkdir /tmp/jekyll-site
rsync -P -r ./_site/ /tmp/jekyll-site
# checkout into gh-pages
git checkout gh-pages 
rsync -P -r /tmp/jekyll-site/ .
# commit and push changes
git commit -av -m "update gh-pages site on `date`"
git push -v
# check back into master
git checkout master
# Clear temp dir
#rm -r /tmp/jekyll-site