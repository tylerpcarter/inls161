---
layout: default
title: Operating on a remote system
---

# 2015-06-23
## {{ page.title }}

In this class, when we operate on a remote system, we will do so through a few different protocols, which will be detailed shortly. 

Operating on a remote system directly--that is, manipulating files and issuing instructions in a command shell--is preferable if you wish to have a high level of control over what you are doing. 
It also keeps you closer to "bare-metal" computing. 
In most cases, what we will be doing is not, in fact, bare metal computing, but rather interacting with systems that run on huge banks of servers, the resources of which have been virtualized and distributed across many more systems than there could possibly be if each were running on its own. 

This abstraction, however, does not take us too far from the experience that we are aiming at. 
We will learn all the same techniques as if we were running on systems directly. 

### Linux and UNIX

I will not go too deeply into the history of Linux and UNIX, except to say a few things and explain why we are using these as our primary platforms for operation. 

UNIX is a general purpose, multitasking, multi-user operating system designed in the 1970s at Bell Labs. 
The name "UNIX" now refers to a whole family of operating systems, as shown below. 

<a href="https://upload.wikimedia.org/wikipedia/commons/7/77/Unix_history-simple.svg" target="_blank"><img width="200" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Unix_history-simple.svg/200px-Unix_history-simple.svg.png" alt="UNIX History" /></a>

UNIX serves as the precursor to a complete, independent clone thereof called "Linux." 
Linux was developed initially in 1991 by a student at Helsinki University named Linux Torvalds, who still develops the operating system kernel today. 
The project was inspired by the lack of a functioning kernel for the GNU UNIX-like system designed by Richard Stallman. 
Torvalds says that if the GNU kernel had worked, he would likely have never written Linux. 

When you use Linux today you are actually using GNU and Linux together. 
Linux provides the operating system kernel and GNU provides the system software layer that runs over it and allows you to interact with it. 
There are myriad different versions of GNU/Linux floating around out there. 
All are Free and Open Source Software, which means that you can download the source code, compile it yourself, and run it on any system you like. 
Below is a family tree of all existing GNU/Linux distributions.
Have a look to see if you can find Ubuntu, the system that we are most likely using on our CodeAnywhere Dev Boxes.

<a href="https://upload.wikimedia.org/wikipedia/commons/1/1b/Linux_Distribution_Timeline.svg" target="_blank"><img width="200px" src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Linux_Distribution_Timeline.svg/200px-Linux_Distribution_Timeline.svg.png" alt="GNU/Linux Family Tree" /></a> 

Operating systems are complex, as is their history, and I am afraid that I cannot do justice to it here. 
This history (and a general history of personal computing) is best told in a long essay by science-fiction author, Neal Stephenson:

Stephenson, N. (1999). <a href="http://www.cryptonomicon.com/beginning.html" target="_blank">In the beginning was the command line</a>. Retrieved from http://www.cryptonomicon.com/beginning.html

Read that piece at some point, if you have a chance. 
It's fascinating, exceedingly well-written, and a reasonably easy read. 

### Who cares? 

Right, so why is this important? 

Well for starters, some version of UNIX or Linux runs on the backend of nearly 70% of all public-facing web servers. 
In addition to that, Linux runs on 97% of supercomputers and computer clusters. 

Also, Mac OS X is UNIX-based. 
Android is just a weird, simplified version of Linux. 
Chrome OS, underneath the browser layer is Linux. 
Myriad little embedded devices like e-readers, tiny automation devices, media devices (DVRs, Amazon Fire, Roku, etc.) have some Linux-y thing running underneath. 

UNIX and Linux surround you, physically and otherwise. 

It is important to know something about the things around you. 
Otherwise, they might as well be operating as if by magic. 

### So...

So, if you ever have occasion to operate on a remote system, it is terribly likely that you are going to be logging into a Linux box somewhere, and failing that, a UNIX box. 
From now on, you'll never be able to say that you don't know how to do that. 

![We use Linux.](/images/bsod_lion.jpg)

Previous: [Servers]({{ base.url }}/schedule/servers/). Next up: [SSH and FTP]({{ base.url }}/schedule/ssh-ftp/)