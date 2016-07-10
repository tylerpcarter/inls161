#!/bin/bash
DIR=`mktemp -d`
# Backup push
git add -v *
git commit -av -m "backup commit"
git push -v
# Move _site to tmp file
mkdir $DIR
# Build Jekyll site
jekyll build -d $DIR
#rsync -r ./_site/ $DIR
#rm -r ./_site
# checkout into gh-pages
git checkout gh-pages 
rm -r *
rsync -r $DIR .
# commit and push changes
git commit -av -m "update gh-pages site on `date`"
git push -v
# check back into master
git checkout master
# Clear temp dir
rm -r $DIR
# Exit
exit 0