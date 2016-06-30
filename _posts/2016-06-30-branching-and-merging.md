---
layout: post
title: "Branching and Merging"
category: Web
tags: 
- git
- GitHub
- web development
- workflows
---

Today we will set up a testing workflow and learn how to create branches for adding and changing features on our sites. 
We will use this to change the visual style the site and create blog posts. 

This session will be mostly hands-on. 
<excerpt/>

# Set up testing environment

Testing and checking your work is a necessary part of doing any task. 
You don't send a paper off to your professor without proofreading it (you shouldn't, anyway). 
Similarly, you do not want to put a website online that you haven't tested. 

I've created a repository that has some helper scripts in it. 
It is called `helper-scripts` and is located in the github organization for the class. 
I will add to it over the course of rest of the semester. 

Open an SSH terminal in your CodeAnywhere container. 
Then clone the `helper-scripts` repo.

`git clone git@github.com:inls161/helper-scripts.git`

Once you have it, descend into the directory. 

`cd helper-scripts`

Then look at the `README.md`. 
Remember, you can look at this online, in GitHub, or you can look at it in the terminal (or in your CodeAnywhere text editor). 

You'll need to make sure that the `install-gh-pages.sh` file is executable. 

`ls -lah`

You should see an `x` in the permissions. Is it there?

The filename will also be highlighted as green text if the file is executable. 

Once you have made sure it can be executed, you have to run it as a superuser, or the root user. 
To do this with any command, type `sudo` before the rest of the command.
`sudo` is a program that allows you to execute system commands. 
You only need it when you are doing something that operates on the operating system itself, like installing new software. 

This script installs updates and new software to your system.
Just type:

`sudo ./install-gh-pages.sh`

The dot and slash specify the location. 
This is necessary because this executable is not in your normal execution `PATH`. 

That command will run for a few minutes (~10 min). 
Just let it go. It should work unsupervised. 
We'll switch to a different tab to continue working while it runs. 

# Create a branch

To create, or "checkout" a new branch, we can follow Roger Dudler's guide again.{% sidenote 'gitnoshit' 'Dudler, Roger. “Git: The Simple Guide.” Git: The Simple Guide. Last modified 2015. <http://rogerdudler.github.io/git-guide/>.<br/><br/>Also check this resource out for help with branching and merging: “Git - Basic Branching and Merging.” Git --Fast-Version-Control. https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging.' %}

`git checkout -b testing`

This creates a new branch and switches us into it.

If we want to see our existing branches and see where we are, type:

`git branch -l` or `git branch --list`

Once here we can make changes without disturbing the `master` branch, which should have our running code in it. 

To switch between branches, simply type (mutatis mutandis):

`git checkout BRANCH-NAME`

# Edit your CSS 

Find your CSS file. 

This file might have either `.css` or `.scss` as an extension.

Once you have found it you should make a small change to it.
Change the background color, for instance.

Once that is done, you can add and commit those changes: 

`git add -v * && git commit -a -m "edited css to different background color`

# Test your branch

We are still in the `testing` branch. 
We need to test our code to see if it worked. 

To do this, we will have to access the files locally and start a webserver. 
Go back to the SSH terminal and check to see that the earlier script finished its work. You'll know because you will see a prompt and blinking cursor at the bottom. 

Switch into the root directory of your website repository. 

`cd ../YOUR-GITHUB-USERNAME.github.io`

And then run the following command. 

`jekyll serve --host=0.0.0.0 --drafts`

This starts a webserver and builds your site.
Then we need to find the address where you can see your site. 

If you right click on the container in your file tree and select "Info" it will bring up a document with two long links in it toward the bottom. 
These links let you see applications that your server is running. 

Click the first link, which looks like this:

http://preview.2xgeb3y9x622zkt9z51g8y0twrpy14i6v8n6zf2i7e97ldi.box.codeanywhere.com

This will give you a 404 error. 
This is because the default preview port for Jekyll is 4000. 

So, edit the link to read:

[http://preview.2xgeb3y9x622zkt9z51g8y0twrpy14i6v8n6zf2i7e97ldi.box.codeanywhere.com**:4000**](http://preview.2xgeb3y9x622zkt9z51g8y0twrpy14i6v8n6zf2i7e97ldi.box.codeanywhere.com:4000)

You will then be able to see your site online. If you click on the link above while I am demonstrating this in class, you will see my site.

This will allow you to see if your changes worked or not. 
If they did, and you like them, you can merge them back into the `master` branch and then they will be live on your site when you push them up to GitHub. 

To kill the preview, press `CTRL+C` in the SSH terminal where jekyll is running. 

# Merge your branch into master

To merge changes, switch back to the master branch. 

First, checkout the `master` branch. 

`git checkout master`

And make sure that you are in the right place. 

`git branch -l`

You should see `master` highlighted. 

Then merge the changes in:

`git merge testing`

And they should be made. 
Don't forget to commit and push.

`git commit -a -m "merged testing into master"`

# Roll back a change

We can roll back most changes.{% sidenote 'revert' 'jaw6. “How to Undo (almost) Anything with Git.” GitHub. Last modified June 8, 2015. https://github.com/blog/2019-how-to-undo-almost-anything-with-git.' %} 
The simplest way to do this it to just revert the last commit. 

`git revert <SHA>`

# For tomorrow

We're going to try a slightly different approach tomorrow. 
I'm going to cluster you in groups based on where you are in the process of completing assignment #1. 
It is okay if you are still early on: that is fine. 
I want to be able to collectively help you, though, and that will be easier to do if I know where you are and if you can help each other through tasks that are closer together in the overall workflow. 