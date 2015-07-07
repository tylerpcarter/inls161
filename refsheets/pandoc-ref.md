---
layout: default
title: Pandoc Reference Sheet
---

# {{ page.title }}

## Installing Pandoc

To install Pandoc in your CodeAnywhere DevBox, use the following command:

`sudo apt-get install pandoc`

If you want to be able to convert into PDF directly, use this command also (note that this will use up a lot more space on your DevBox virtual disk):

`sudo apt-get install texlive-base`

If you are going to be compiling a document with citations then you will also want to install pandoc-citeproc:

`sudo apt-get install pandoc-citeproc`

## Basic Pandoc commands

*All Pandoc commands are documented here: http://pandoc.org/README.html*

Convert a Markdown file to HTML:

`pandoc -o example.html example.md

Pandoc reads the filetype from the extension in normal usage. 
If you want to convert a file directly from a URL, you will have to specify the filetype, like this:

`pandoc -f html -t markdown http://inls161.johndmart.in/syllabus/`

You can make sure that certain things, like quotes and em-dashes, get read and formatted propery by specifying the "Smart" switch (a capital 'S' or `--smart`):

`pandoc -S -o example.html example.md`

There are a host of other commands in the documentation. Be sure to try them out. 

## Specific file commands

If you have TeXLive installed, you will be able to compile a PDF: 

`pandoc -S -o example.pdf example.md`

If you wish to convert to a DOCX or ODT file:

`pandoc -S -o example.docx example.md`
`pandoc -S -o example.odt example.md`

If you wish to convert between two different word processor types:

`pandoc -S -o example.docx example.odt`

Filter a document through a template file:

`pandoc -S --template=FILE -o example.docx example.md` 

In the above command, you need to specify the location of the template file. 
If it is a file called `template.docx` and is located in the same directory as your Markdown source, then the command will be:

`pandoc -S --template=./template.docx -o example.docx example.md`

Compile a table of contents (for PDF output): 

`pandoc -S --toc -o example.pdf example.md`

# Example files

<a href="{{ base.url }}/refsheets/examples/#formatted-text-files" target="_blank">Link to the example files.</a>