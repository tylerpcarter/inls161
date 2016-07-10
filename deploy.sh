#!/bin/bash

# Build Jekyll site
jekyll build
# Move to tmp file
mkdir /tmp/jekyll-site
cp ./_site/* /tmp/jekyll-site/
# checkout into gh-pages
git checkout gh-pages 
cp /tmp/jekyll-site/* .
# commit and push changes
git commit -a -m "update gh-pages site on `date`"
git checkout master