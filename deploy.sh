#!/bin/bash
### Set the following variables for your repository
GITHUBUSERNAME=jdmar3
REPONAME=inls161
REMOTEADDR=github.com
REMOTEUSERNAME=git
BUILDBRANCH=gh-pages
WORKDIR=~/workspace/inls161 # Local directory of source repo 

### Display help text
if [[ "$1" = [-][hH] || "$1" = [-][hH] || "$1" = [-][-][Hh][Ee][Ll][Pp] ]]
	then
		echo -e "Usage:	deploy.sh [source branch] [target branch]"
		echo -e "Example:	deploy.sh"
		echo -e
		echo -e "This script should be run in the directory where your Jekyll source files live."
		echo -e
		echo -e "  -h, --help		Displays this help screen. "
    exit 0
fi

TEMPDIR=`mktemp -d`

# move into $TEMPDIR
cd $TEMPDIR
# Clone repository into TEMPDIR
git clone --single-branch --branch=$BUILDBRANCH  $REMOTEUSERNAME@$REMOTEADDR:$GITHUBUSERNAME/$REPONAME.git $TEMPDIR
# Build Jekyll site
jekyll build -s $WORKDIR -d $TEMPDIR
# Add new build to git 
git add -v .
# Commit changes since last build
git commit -a -m "Update live site `date`"
# Push changes
git push
# Clear temp dir
rm -r $TEMPDIR
# Move back to source dir
cd $WORKDIR
# Exit
exit 0