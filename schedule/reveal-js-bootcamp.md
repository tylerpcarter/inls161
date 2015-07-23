---
layout:default
title: "reveal.js bootcamp"
---

# 2015-07-23
## {{ page.title }}

### Create a new repo

First things first, we need to make sure that our repo is set up accordingly. 

Go to Github and set up a new repository. 
Call it whatever you like ("presentation," whatever). 

I'll call mine "gettysburg."

Once you have set it up, grab the clone url for SSH and keep it for later and head over to CodeAnywhere. 

Mine is: `git@github.com:jdmar3/gettysburg.git`

Make sure that you are in your `workspace` directory and then clone the reveal.js repo:

`git clone git@github.com:hakimel/reveal.js.git gettysburg`

Note that I am cloning into a directory called gettysburg. 
You should make this directory the same as whatever repo you just created above. 

Once we have our base reveal.js in that directory, we need to edit the config to make it point back at our repo.

Open .git/config and look for the `[remote "origin"]` section and the `url =` variable under it. 

Change that variable from the reveal.js Git URL to the one for your repo that we copied earlier (`git@github.com:USERNAME/REPONAME.git`).

Then we'll need to add, commit and push that to make sure that everything is in the right place.

`git add * && git commit -a -m "initial commit to new repo" && git push`

Then add the following two lines into that same section in the config:

```
	push = +refs/heads/master:refs/heads/gh-pages
	push = +refs/heads/master:refs/heads/master
```

So that the whole file should look something like this:

```
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = git@github.com:jdmar3/gettysburg.git
	fetch = +refs/heads/*:refs/remotes/origin/*
	push = +refs/heads/master:refs/heads/gh-pages
	push = +refs/heads/master:refs/heads/master
[branch "master"]
	remote = origin
	merge = refs/heads/master
```

Then we need to create a new branch. 
This is necessary for github-pages to be able to generate a project page for us. 
The branch must be called gh-pages. 

`git checkout gh-pages`

Let's add, commit and push that just to be sure that it all worked and that our new branch was added. 

Alright. 

We have a new branch and our new branch is going to be synced with our master branch. 
So, we can switch back to master for everything else now. 

`git checkout master`

### Markdown source conversion

Now let's add a markdown file into that directory with our presentation content in it. 

Mine is here: `http://inls161.johndmart.in/raw-material/gettysburg.md`

Once that file is inside my repo directory, all I need to do is convert it to reveal.js using Pandoc. 

`pandoc -t revealjs -s gettysburg.md -o gettysburg.html`

Pandoc will assume that the reveal.js files are in the same directory as the file we are creating, so we do not need to set a variable. 
If we were calling reveal.js from elsewhere, then we would specify it like this: 

`pandoc -t revealjs --variable revealjs-url="http://some-other-place.com/" -s gettysburg.md -o gettysburg.html`

This would be a good way to keep all of your reveal presentations up to date without having to constantly update the core software. 
Or it would be useful if you had only the HTML file on a flash drive and wanted to load the JS and CSS3 remotely. 
I've not tested that approach, but it should work. 
We are not doing that here, but it is good to know. 

Everything else should look similar to the index.html file in our reveal.js repo. 

Now we want to replace that index with our own new file. 

First, let's backup the index file just in case we want to refer to it:

`cp index.html index.html.bck`

and then we will change the name of our file to be index.html:

`mv gettysburg.html index.html`

Now we can edit this file and change images, themes, transitions, etc. 

We can also follow this tutorial to add audio: 

http://www.faculty.jacobs-university.de/agoel/audio-slideshow/#/3

I'll add some more notes here about that process as we go through it. 