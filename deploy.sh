#!/bin/bash
### FUNCTION: Print warning message. 
function warning() 
{ 
    echo "$*" >&2 
    exit 1   
} 
### FUNCTION: Print error message and exit. 
function error() 
{ 
    echo "$*" >&2 
    exit 1 
} 

### Display help text
if [[ "$1" = [-][hH] || "$1" = [-][hH] || "$1" = [-][-][Hh][Ee][Ll][Pp] ]]
	then
		echo -e "Usage:	deploy.sh [source branch] [target branch]"
		echo -e "Example:	deploy.sh gh-pages"
		echo -e
		echo -e "This script should be run in the directory where your Jekyll source files live."
		echo -e
		echo -e "  -h, --help		Displays this help screen. "
    exit 0
fi

TARGETBRANCH=$1
SRCBRANCH=`git rev-parse --abbrev-ref HEAD`
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
# Move back to source dir
cd $WORKDIR
# checkout into gh-pages 
git checkout -f $TARGETBRANCH
rm -r *
rsync -r $TEMPDIR/ 
# commit and push changes
git add -v *
git commit -av -m "update gh-pages site on `date`"
git push -v
# check back into master
git checkout $SRCBRANCH
# Clear temp dir
rm -r $TEMPDIR
# Exit
exit 0