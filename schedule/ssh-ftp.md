---
layout: default
title: SSH and FTP
---

# 2015-06-23
## {{ page.title }}

The two remote operation protocols that we will want to think about in this class are SSH and FTP.

SSH stands for "Secure SHell." 
It allows users to log in remotely through a command-line-only interface. 

FTP stands for "File Transfer Protocol."
It allows users to transfer files from one system to another. 

Both are standard issue tools on most UNIX distributions. 
Both run as daemons which sit waiting and listening for the right request on the right port. 

SSH uses port 22, unless otherwise configured. 

FTP uses port 21, unless otherwise configured. 

SSH traffic is encrypted. 

FTP traffic is not typically encrypted. 

### Special uses

There is also a special use case for something called SFTP (Secure File Transfer Protocol), which uses the SSH daemon to connect for file transfers. 
This means that you can connect to a server and transfer files over port 22 (or whatever port is configured). 

What do you think is the reason that you might want to do this?

### Logging in

With SSH, login is simple. 
If you operate on a system with an SSH client installed, you need to know your username and password. 

You will issue a command something like this:

`localhost $ ssh user@system.hostname`

For FTP, we have the same thing:

`localhost $ ftp system.hostname`

The `localhost $` above is called a "prompt." 
This indicates that you can issue commands. 
Prompts take many different forms. 
You'll see different prompts as you try things out on different systems. 

A better way to use FTP is with a client that allows you to move files back and forth somewhat more graphically. 
You can do without this, but there is really no need. 
The FTP client built into CodeAnywhere allows for direct operation on files through FTP.
You can upload directly from your local filesystem. 

There are many different clients available, though. 
Go out on the Internet and find an FTP client to share with the class. 
Pay attention to different features. 
We will talk about these in class. 

### Next time: 

We'll get into what ports really do next time when we talk about networking a bit more. 
In the mean time, I want you to think about what we know about ports so far. 

We know three, HTTP (8000), SSH (22), and FTP (21).

Why do you think that we specify ports for different protocols?  

What happens if we change them? 

Previous: [Operating on a remote system]({{ base.url }}/schedule/remote/)