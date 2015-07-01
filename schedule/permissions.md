---
layout: default
title: Permissions
---

# 2015-07-01
## {{ page.title }}

Sometimes we will need to specify that certain users can or cannot access a given file. 
We do this using permissions. 

In UNIX systems, permissions can be represented in a number of ways. 
One way is the representation that we see when we use `ls -l` in a directory. 

```
cabox@box-codeanywhere:~/workspace/inls161$ ls -lah                                                                                                                                                                                           
total 88K                                                                                                                                                                                                                                     
drwxr-xr-x 12 cabox cabox 4.0K Jul  1 11:06 .                                                                                                                                                                                                 
drwxrwxr-x  4 cabox cabox 4.0K Jun 30 10:39 ..                                                                                                                                                                                                
drwxr-xr-x  8 cabox cabox 4.0K Jun 30 10:56 .git                                                                                                                                                                                              
-rw-r--r--  1 cabox cabox   20 Jun 30 10:39 CNAME                                                                                                                                                                                             
-rw-r--r--  1 cabox cabox  20K Jun 30 10:39 LICENSE                                                                                                                                                                                           
-rw-r--r--  1 cabox cabox  580 Jun 30 10:39 README.md                                                                                                                                                                                         
-rw-r--r--  1 cabox cabox 1.6K Jun 30 10:46 _config.yml                                                                                                                                                                                       
drwxr-xr-x  2 cabox cabox 4.0K Jul  1 10:06 _drafts                                                                                                                                                                                           
drwxr-xr-x  2 cabox cabox 4.0K Jun 30 10:39 _includes
```

The readout from `ls -lah` provides us with information about the directory we are in, the parent directory, and then all of the immediate subdirectories and files. 
The first field on the left gives us the permissions (`drwxr-xr-x`). 
Then number of links (`12`), owner (`cabox`), group (`cabox`), size of file or directory node (`4.0K`), timestamp of last change (`Jul  1 10:06`), and finally the file or directory name (.).

`r` means "read."
`w` means "write."
`x` means "execute."

The first place is to indicate whether or not it is a directory. 
`d` means that it is, while `-` means that it is just a file. 

Then the places are grouped into threes. 
The first triplet refers to the user who owns the file: `u`.
The second triplet refers to the group that owns the file: `g`. 
The final triplet refers to anyone else on the system: `o`.

### chmod

To change permissions, we use a program called `chmod`.
This is an abbreviation for "change mode."
Mode refers to how the file or directory behaves depending on who accesses it and how. 

The basic syntax is as follows;

`chmod [MODE] [FILENAME]`

For example, if I want to change the following file to be executable by any user: 

```
-rw-r--r--  1 cabox cabox 1.6K Jun 30 10:46 scripts.js
```

I would type:

`chmod +x scripts.js` or `chmod a+x scripts.js`

If I only want it to be executable by me or members of my group, I would type:

`chmod ug+x scripts.js`

If I want to make it so that only I can read the file at all, I type:

`chmod go-r scripts.js`

And so on. 

### Octal permissions

Sometimes instead of letters, you will see numbers associated with permissions. 
Instead of being confused about this, let's go ahead and demystify those. 

In this case, you will see a set of three or four numbers as the representation of permissions, like this;

`0644`

These numbers correspond to the same representation in the directory listing above:

`-rw-r--r--`

Let's ignore the first digit. 
It sets some special information about the file. 
If you are interested in that, read [here](https://en.wikipedia.org/wiki/Setuid).

The second digit represents the user, the same as our first triplet of letters.

The third represents the group, same as the second triplet.

The final digit represents everyone else, just like our last triplet. 

Each digit has 8 possibilities (0-8) each of which correspond to a specific mode. 
This is why we call them "octal" permissions. 
They are just permissions represented in a base-8 numeric system. 

Let's play around with an online calculator that will let us see how different permissions translate between the two. 

[UNIX Permissions Calculator](http://permissions-calculator.org/)


Next up: [Get your site up and running]({{ base.url }}/schedule/build-a-site). 