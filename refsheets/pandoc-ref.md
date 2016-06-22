---
layout: default
title: Pandoc Reference Sheet
---

# {{ page.title }}

## Installing Pandoc

To install Pandoc in your CodeAnywhere DevBox, use the following command:

`sudo apt-get install pandoc`

If you are going to be compiling a document with citations then you will also want to install pandoc-citeproc:

`sudo apt-get install pandoc-citeproc`

If you want to be able to convert into PDF directly, grab the TeXLive installer that I have configured at one of our class repos. 

`cd ~/workspace`
`git clone git@github.com:INLS161Su2015/install-tl-inls161.git`
`cd ./install-tl-inls161`
`sudo ./install-tl`

The TeXLive installer will run and ask you if you want to install it with the preconfigured profile. 
Just type `y` and let it run. It should only take a few minutes. 

This will give you a pretty minimal install, but you can always use the TeXLive package manager (`tlmgr`) to install any additional packages that you need without having to install all of TeXLive.
It is a pretty massive beast, so if you are using a CodeAnywhere devBox, you will likely run out of space. 
In fact, since you have all of your work saved in your GitHub repo (and you should, if you've been committing and pushing properly) it might be a good idea to just go ahead and delete your DevBox and start a new one before you install TeXLive.

Right off the bat, when I was testing this, I found that I needed the `booktabs` package from TeXLive. 
To install a package directly from TeXLive, do as follows:

`sudo tlmgr install PACKAGENAME`

In this case, I needed `booktabs`, so I did this:

`sudo tlmgr install booktabs`

Et voila. Installed. 

## Basic Pandoc commands

*All Pandoc commands are documented here: http://pandoc.org/README.html*

Convert a Markdown file to HTML:

`pandoc -o example.html example.md

Pandoc reads the filetype from the extension in normal usage. 
If you want to convert a file directly from a URL, you will have to specify the filetype, like this:

`pandoc -f html -t markdown http://inls161.johndmart.in/syllabus/`

You can make sure that certain things, like quotes and em-dashes, get read and formatted propery by specifying the "Smart" switch (a capital `-S` or `--smart`):

`pandoc -S -o example.html example.md`

There are a host of other commands in the documentation. Be sure to try them out. 

## Specific file commands

Convert your markdown to HTML:

`pandoc -o example.html exampld.md`

If you have TeXLive installed properly (see above), you will be able to compile a PDF: 

`pandoc -o example.pdf example.md`

To get a table of contents in that file and to make sure that quotes and dashes and other special characters work properly we have to add the switches `--toc` (or `--table-of-contents`) and `-S` (or `--smart`), like this: 

`pandoc --toc -S -o example.pdf example.md`

If you wish to convert to a DOCX or ODT file:

`pandoc -o example.docx example.md`
`pandoc -o example.odt example.md`

If you wish to convert between two different word processor filetypes, we might have to get a little creative. 
We learned in class that if we issue the following command, we get errors related to file encoding and the conversion will not work. 

`pandoc -o example.docx example.odt`

If, however, we add an intermediary step, say through HTML, we can get the output that we want. Try it like this instead: 

`pandoc -o example.docx example-tmp.html && pandoc -o example.odt example-tmp.html`

This preserves the formatting and extracts the text from the DOCX as an HTML file and then converts that HTML into ODT. 
We do not have the weird encoding errors this way, and we don't have to mess with pipes. 

Filter a document through a template file:

`pandoc -S --reference-docx=FILE -o example.docx example.md` 

In the above command, you need to specify the location of the template file. 
If it is a file called `template.docx` and is located in the same directory as your Markdown source, then the command will be:

`pandoc -S --reference-docx=./template.docx -o example.docx example.md`

You can also use an ODT or OTT for reference:

`pandoc -S --reference-odt=./template.ott -o example.odt example.md`

# Example files

<a href="{{ site.baseurl }}/refsheets/examples/#formatted-text-files" target="_blank">Link to the example files.</a>