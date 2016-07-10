#!/bin/bash
TEMPDIR=`mktemp -d`
WORKDIR=`pwd`
# Backup push
git add -v *
git commit -av -m "backup commit"
git push -v
# Create temp file
cd /tmp
mkdir $TEMPDIR
# Build Jekyll site
jekyll build -s $WORKDIR -d $TEMPDIR
#rsync -r ./_site/ $TEMPDIR
#rm -r ./_site
# Move back to source dir
cd $WORKDIR
# checkout into gh-pages
git checkout gh-pages 
rm -r *
rsync -r $TEMPDIR .
# commit and push changes
git commit -av -m "update gh-pages site on `date`"
git push -v
# check back into master
git checkout master
# Clear temp dir
rm -r $TEMPDIR
# Exit
exit 0