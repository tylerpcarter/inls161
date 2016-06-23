---
layout: page
title: Networks Reference Sheet
nav_exclude: true
---

# {{ page.title }}

## Information about users

Show who is logged on and what they are doing:

`w`

Give me information about myself on this host:

`whoami`

Give me information about another user:

`finger user`

## Network information

Elicit a response from a host somewhere:

`ping unc.edu`

*ping* will continue forever if we let it. 
So, to kill the process, press CTRL+C. 
This will stop ping and give us a summary of what it found. 
We can also specify a count and then ping will only run that number of times before it stops and reports out.

`ping -c 10 unc.edu`

You'll need to install some of these tools as they are not part of the standard DevBox install. 
*Dig* is part of the *dnsutils* package in Ubuntu. 
You can figure this out by searching for it like this:

`apt-cache search dig | grep DNS`

The command above searches for dig, which will return results that have the words "digital" and "digest" if you don't attempt to narrow the field somewhat. 
Since we know that dig has something to do with DNS, it seems like a good candidate to narrow the results. 
We use a pipe separator (|) and *grep* to return only results that match on our query of "dig" that also mention "DNS" somewhere either in the package name or short description. 
DNSutils pops up right at the top, along with all of the other more advanced versions of DNSutils. 
It is probably a safe bet that the dig command will be rolled into DNSutils, so let's install it. 

`sudo apt-get install dnsutils`

*Whois* and *nmap* are also not installed on your DevBox, so let's go ahead and install those as well. 
You can install two or more packages using the same command:

`sudo apt-get install whois nmap`

Now we should be ready to go. Let's find out some stuff about unc.edu.
Find some information about that host from the whois directory:

`whois unc.edu`

Look up the DNS registry information for this hostname:

`dig unc.edu`

Since we know the IP address for unc.edu now, lets do a reverse lookup on it.
Look up the hostname for this IP address:

`dig -x 152.19.230.139`

Let's look up vpn.unc.edu and see if it is the same as the main webserver IP address:

`dig vpn.unc.edu`

Tell me what ports are open on this host:

`nmap unc.edu`

Get me this file and download it here:

`wget http://rogerdudler.github.io/git-guide/files/git_cheat_sheet.pdf`