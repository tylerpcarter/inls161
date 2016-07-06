---
layout: page
title: Reference
weight: 9
---

# Operating systems and tools

## UNIX

{% marginnote 'unix' '**UNIX** is a general purpose operating system originally developed in the 1970s by Ken Thompson and Dennis Ritchie at Bell Labs. Its utility and wide use has given rise to a number of clones&mdash;operating systems that are functionally identical.' %}

<a href="https://ubuntudanmark.dk/filer/fwunixref.pdf" target="_blank">FOSSWire UNIX Command Reference</a>

## Linux
{% marginnote 'unix' '**Linux** is one such UNIX clone originally invented in 1991 by Linus Torvalds. It is now among the most widely used operating systems in the world. If you have used the Internet, you have interacted with Linux perhaps without even realizing it. Your CodeAnywhere containers run Linux.' %}

<a href="The Linux Command Line - William E. Shotts, Jr." target="_blank">http://linuxcommand.org/tlcl.php</a>

<a href="http://linuxnewbieguide.org/?page_id=5">The Ultimate Linux Newbie Guide</a>

## Bash (UNIX shell)

{% marginnote 'bash' '**Bash** is the name of the shell and command language that we use most frequently in Linux and other UNIX clones. It is a text-interface command line envrionment but it can also read commands from files in the form of scripts.' %}

<a href="Learning the shell - William E. Shotts, Jr." target="_blank">http://linuxcommand.org/lc3_learning_the_shell.php</a>

<a href="Writing shell scripts - William E. Shotts, Jr." target="_blank">http://linuxcommand.org/lc3_writing_shell_scripts.php</a>

### Reference sheets from in-class activities

These reference sheets correspond to things that we actualy did or will do in class (depending on how fast I can aggregate them and get them posted here).

[Remote operation]({{ site.baseurl }}/refsheets/remote-ref/)

[Networking]({{ site.baseurl }}/refsheets/network-ref/)

## VIM (UNIX text editor)

{% marginnote 'vim' '**VIM** is a text-only, command-based text editor that is meant to be used when no graphical user environment is available. When making commits in git, if you forget to add a message in the command, this is the editor that pops up automatically. It is good to know this and other text editors just in case you are using a Linux system that only has a command line interface. ' %}

<a href="http://vim.rtorr.com/" target="_blank">VIM Cheat Sheet - Richard Torruellas</a>

<a href="http://tnerual.eriogerg.free.fr/vimqrc.pdf" target="_blank">VIM Quick Reference Card - Laurent Gregoire</a>

# Version Control

## Git

{% marginnote 'git' '**git** is a distributed version control system that keeps track of the changes between plaintext source files. It can be used for collaboration or for managing and keeping track of workflows for individuals. While primarily intended for software source code, git works with any plaintext files, and so can also be used for authoring of other kinds.' %}

<a href="http://rogerdudler.github.io/git-guide/files/git_cheat_sheet.pdf" target="_blank">Git - The Simple Guide (PDF)</a> <a href="https://rogerdudler.github.io/git-guide/" target="_blank">(WEB)</a>

<a href="https://education.github.com/git-cheat-sheet-education.pdf" target="_blank">Git Cheat Sheet - GitHub</a>

<a href="https://www.atlassian.com/git/tutorials/" target="_blank">Git Tutorials and Training - Atlassian</a>

## Reference sheets from in-class activities

[Git local]({{ site.baseurl }}/refsheets/git-ref/)

[Basic git workflow cheatsheet]({{ site.baseurl }}/refsheets/basic-git-workflow-cheatsheet.pdf/)

## GitHub

{% marginnote 'github' '**GitHub** is a platform that allows for users to keep copies of their open source, plaintext repositories online, in a single centralized location. It also adds a social interaction layer to the process of managing version-controlled source files.' %}

<a href="https://guides.github.com/activities/hello-world/" target="_blank">Hello World - GitHub Guides</a>

### Reference sheets from in-class activities

[Git remote]({{ site.baseurl }}/refsheets/github-ref/)

# Markup languages and web code

## Markdown

{% marginnote 'markdown' '**Markdown** is a simple, human-readable, free markup syntax for rendering plaintext source files into HTML or other formats when run through an interpreter.' %}

<a href="http://packetlife.net/media/library/16/Markdown.pdf" target="_blank">Markdown Cheat Sheet - Packetlife.net</a>

<a href="http://code.tutsplus.com/tutorials/markdown-the-ins-and-outs--net-25482" target="_blank">Makdown: The Ins and Outs - Dan Harper</a>

## HTML5

{% marginnote 'html' '**HTML** is an acronym for "HyperText Markup Language." "Hypertext" is text that contains links to other text. The Web, as we know it, relies on hypertext to for us to communicate with systems and with other humans. It is the medium of Web content.' %}

<a href="http://websitesetup.org/HTML5-cheat-sheet.pdf" target="_blank">HTML5 Cheat Sheet - WebsiteSetup.org</a>

<a href="http://www.w3schools.com/html/default.asp" target="_blank">W3CSchools HTML(5) Tutorial</a>

## CSS3

{% marginnote 'css' '**CSS** is an acronym for "Cascading Style Sheet." If HTML is the medium for web content, then CSS is the palette for the visual styling of the web. Whenever a website looks like anything other than just a blank page, there is CSS involved.' %}

<a href="http://lesliefranke.com/sandbox/ref/csscheatsheet.pdf" target="_blank">CSS3 Cheat Sheet - Leslie Franke</a>

<a href="http://www.w3schools.com/css/default.asp" target="_blank">W3CSchools CSS Tutorial</a>

## Jekyll and Liquid

{% marginnote 'jekyll' '**Jekyll** is a blog-aware static site generator. It uses raw text files in place of a database to store content, which it parses and renders into web code.' %}

<a href="http://ricostacruz.com/cheatsheets/jekyll.html" target="_blank">Jekyll Cheatsheet - Rico Sta. Cruz</a> 

{% marginnote 'liquid' '**Liquid** is a templating engine with simple markup used by Jekyll to render dynamic elements of a site. ' %}

<a href="https://github.com/Shopify/liquid/wiki/liquid-for-designers" target="_blank">Liquid for Designers - Shopify Dev Team</a>

<a href="https://github.com/Shopify/liquid/wiki/Liquid-for-Programmers" target="_blank">Liquid for Programmers - Shopify Dev Team</a>

# Document processing

## Pandoc

{% marginnote 'pandoc' '**Pandoc** is a universal document converter invented and developed by John MacFarlane. It is an indispensible tool for converting to and from a multitude of text document formats.' %}

A good set of commands and rationale for using Pandoc to create and convert documents lives here: 

<a href="http://anghyflawn.github.io/teaching/2015/ilw-pandoc/" target="_blank">getting off the word standard: your academic life in plain text - Pavel Iosad</a>

The help/manpage file for Pandoc is linked here: <a href="http://pandoc.org/README.html" target="_blank">Pandoc User Guide</a>. Use it!

### Reference sheets from in-class activities

[Pandoc]({{ site.baseurl }}/refsheets/pandoc-ref/)

# Databases

## MySQL

{% marginnote 'mysql' '**MySQL** is an open source relational database management system (RDBMS) that uses structured query language (SQL) syntax. It was invented by Michael Widenius and David Axmark in the mid 1990s. It is now among the most widely-used database systems in the world. It ships with only a command line interface (CLI) and can be scripted.' %}

<a href="http://www.w3schools.com/sql/" target="_blank">SQL Tutorial - W3Schools</a>

<a href="https://dev.mysql.com/doc/refman/5.5/en/" target="_blank">MySQL 5.5 Reference Manual - MySQL - ORACLE</a>

# Presentations

# Reveal.js

{% marginnote 'reveal' '**Reveal.js** is an open source presentation framework for HTML5 invented by Hakim El Hattab. It allows content creators to develop slideshows as simply as they would web pages. It also has the capacity to add audio narration using a plugin.' %}

### Reveal example presentations
<a href="http://lab.hakim.se/reveal-js/#/" target="_blank">Reveal.js: The HTML5 Presentation Framework - Hakim El Hattab</a>

<a href="https://github.com/hakimel/reveal.js/wiki/Example-Presentations">Example presentations - Reveal.js</a>

### Reveal tutorials

<a href="http://htmlcheats.com/reveal-js/reveal-js-tutorial-reveal-js-for-beginners/" target="_blank">Reveal.js Tutorial-Reveal.js for Beginners - Tom Campbell</a>

# Productivity suites

## LibreOffice

<a href="https://www.libreoffice.org/get-help/documentation/" target="_blank">LibreOffice Documentation for all Packages</a>

# All the things

Web developer Rico Sta. Cruz has published all of his own cheatsheets on his website. 
They are all quite excellent and can serve as a useful reference for anyone just starting out in tech. 
Check them out. 

<a href="http://ricostacruz.com/cheatsheets/" target="_blank">Cheatsheets - Rico Sta. Cruz</a>