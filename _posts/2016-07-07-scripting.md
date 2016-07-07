---
layout: post
title: "Introduction to scripting"
category: Text 
tags: 
- Pandoc
- PDF
- LaTeX
- Bash
- Scripts
---

Today we will learn how to convert our plaintext Markdown into a PDF. 
To do this we will have to install some more software, which may take a while. 

In the mean time, we will cover some of the basics of scripting in order to be able to automate our workflows a little bit better. 
<excerpt/>

# Texlive

The TeX (or LaTeX) distribution that we are using in conjunction with Pandoc is called "TeXLive." 
This software is in our CodeAnywhere container's repositories. 

It is very large, so we are only going to install the base package to avoid running out of space on our CodeAnywhere containers. 
We have a total of 2GB of space. 
TeXLive should take up an extra ~650MB of space. 

To check to see how much space we have, we can run this command in a terminal:

```df -h```

It will look something like this:

```
cabox@box-codeanywhere:~/workspace$ df -h
Filesystem          Size  Used Avail Use% Mounted on
/vz/private/669416  2.0G  1.1G  953M  54% /
none                128M  4.0K  128M   1% /dev
none                4.0K     0  4.0K   0% /sys/fs/cgroup
none                 26M   52K   26M   1% /run
none                5.0M     0  5.0M   0% /run/lock
none                128M     0  128M   0% /run/shm
none                100M     0  100M   0% /run/user
cabox@box-codeanywhere:~/workspace$
```

Make a mental note of the number in the first line of output. 
I have 953MB available. 

## Installation

Now, to get TeXLive installed on our CodeAnywhere containers, we'll need to use apt-get just like we did for Pandoc:

```sudo apt-get install texlive```

That will output a bunch of stuff and tell us how much the installation will take up on disk. 
See if the number is smaller than your available space and then type `Y` and hit enter if you have enough space. 
If not, we'll have to clear something out so you can install it. 

This may take a while. 

In the mean time, we can look at scripting. 

# Scripting

Scripting is fun when you get used to how it works. 
It is also really useful for not having to repeat the same work over and over again. 

Creating scripts is often a trial and error process, though, and can feel frustrating (see below).

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">What scripting feels like <a href="https://t.co/jYR9WQftIX">https://t.co/jYR9WQftIX</a></p>&mdash; SecuriTay (@SwiftOnSecurity) <a href="https://twitter.com/SwiftOnSecurity/status/749783791279939585">July 4, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

## How to do it?

In class today, we're going to go through a basic scripting tutorial with a partner from our teams. 
We'll use William Shotts' tutorial.Writing Shell Scripts tutorial by William Shotts for tomorrow.{% sidenote 'shell-scripts' 'Shotts, William, Jr. “Writing Shell Scripts.” LinuxCommand.org. Accessed July 6, 2016. http://linuxcommand.org/lc3_writing_shell_scripts.php.' %} 
