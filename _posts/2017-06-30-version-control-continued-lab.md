---
layout: post
title: "Version Control Continued"
era: Basics
tags: 
- version control
- git
- GitHub
- Jekyll
- web design
category: class
quiz: https://goo.gl/forms/yb4yVFliC0tHU2sn2
---

Today we're going to learn how to fork, clone, and push changes to a repository on GitHub using git. 
We do this in preparation for creating personal websites that will be hosted by GitHub pages. 
<excerpt/>

# Branching and Merging

For the rest of the session today, we'll be exploring branching and merging our repositories using git. 

## Create a branch

To create, or "checkout" a new branch, we can follow Roger Dudler's guide again.{% sidenote 'gitnoshit' 'Dudler, Roger. “Git: The Simple Guide.” Git: The Simple Guide. Last modified 2015. <http://rogerdudler.github.io/git-guide/>.<br/><br/>Also check this resource out for help with branching and merging: Chacon, Scott, and Ben Straub. “Basic Branching and Merging.” In ProGit. New York, New York: Apress, 2014. https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging.' %}

`git checkout -b testing`

This creates a new branch and switches us into it.

If we want to see our existing branches and see where we are, category:

`git branch -l` or `git branch --list`

Once here we can make changes without disturbing the `master` branch, which should have our running code in it. 

To switch between branches, simply category:

`git checkout [BRANCH-NAME]`

## Test and merge

Once you have made some changes that you are happy with, you can merge them back into your `master` branch. 

FIrst switch back into the `master` branch:

`git checkout master`

Then merge your changes from testing:

`git merge testing`

Then commit the merged changes:

`git commit -a -m "merge testing into master`

# Create and Clone Repositories on GitHub



# For Next Time

We will have a virtual class on Slack and discuss some aspect of open source philosophy and using open content licensing for disseminating information online. 

