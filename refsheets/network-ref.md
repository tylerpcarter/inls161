---
layout: default
title: Networks Reference Sheet
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

`ping -c 10 unc.edu`

Find some information about that host from the whois directory:

`whois unc.edu`

Look up the DNS registry information for this hostname:

`dig unc.edu`

Look up the hostname for this IP address:

`dig -x 152.19.230.139`

Get me this file and download it here:

`wget http://rogerdudler.github.io/git-guide/files/git_cheat_sheet.pdf`



Tell me what ports are open on this host:

`nmap unc.edu`