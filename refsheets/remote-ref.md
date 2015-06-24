---
layout: default
title: Remote Operation Reference Sheet
---

# {{ page.title }}

Dollar sign ($) in the command prompt means that you are in a user shell. 

What directory am I in right now?

`pwd`

Make me a new directory right here:

`mkdir mydirectory`

Move into that new directory that I just made:

`cd mydirectory`

Show me what is in this directory:

`ls`

Show me more information about what is in this directory:

`ls -lah`

Make a new blank file with this name:

`touch myfile`

Output this on the command line:

`echo "Hello, world!"`

Put that thing that I just said into the file I made before:

`echo "Hello, world!" > myfile`

Put this other thing that I want to say into the same file on a new line:

`echo "This is another line." >> myfile`

Show me what is in that file:

`cat myfile`

Put this thing I want to say into a totally new file:

`echo "This is a third line." > myfile2`

Put the stuff in this new file on a new line in my old file:

`cat myfile2 >> myfile`

Make a backup copy of that file:

`cp myfile myfile.bck`

Rename the old file to a new thing:

`mv myfile mynewfile`

Remove that other file that I created:

`rm myfile2`

Become a SUPERUSER:

`sudo COMMAND`

Become the ROOT user: 

`sudo su`

Search for this software package:

`apt-cache search nano`

Install that software package (text editor):

`sudo apt-get install nano`

Install a different editor:

`sudo apt-get install vim`

Install yet another text editor:

`sudo apt-get install emacs23`

Open my file in that editor:

`nano mynewfile`
