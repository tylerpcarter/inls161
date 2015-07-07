---
layout: default
title: "Assignment 3 - Format a document"
---

# {{ page.title }}

**Due: 2015-07-13** 

This assignment involves creating formatted text documents.

The taskset is as follows:

1. Select a plaintext source file. You can choose anything you want. A good source is Project Gutenberg. It can also be something else that you have or are working on. This file should not have any markup in it, but should be heavily structured (i.e., it should have things like headers, links, blockquotes, etc.). If you use Guterberg, make sure that you choose a file with the .TXT extension. 
2. Save a copy of your .TXT file as a Markdown file. In this new file, mark up your text using Markdown. Use the Markdown references linked from the refsheets page. 
3. Once you have completed your formatting to your satisfaction, use Pandoc to convert it to other file types (see refsheets for Pandoc usage). 
3. The outputs you will need in the end are: ODT, DOCX, and PDF. 
3. You will need to create a table of contents for your files. You can do this in both Pandoc (for PDF) and also in LibreOffice (for ODT or DOCX).
4. You should look at all of these files in LibreOffice and whatever PDF viewer to make sure that everything worked. Fix them accordingly. You can also choose to run the conversion through a template file (see the refsheets for instructions). 
5. Once you have your ODT and DOCX files, you can use LibreOffice to convert to PDF. You can also install the most basic TeXLive package in your dev box and convert directly to PDF. See the refsheets for instructions about what to install and what commands to use. 
6. This work should occur somewhere in your site repository (like a folder called "content"), or moved into your site repository so that you can push it to GitHub. 
7. You will need to then create a page on your site where you will link to these files as examples. We will look at this part of the task in the lab on Friday. 

*For extra points: You can submit a plaintext file with the Pandoc commands that you used.* This will give me a sense of what you did to get to your final product and show me some of the underlying rationale you used. Get creative here!

Whether you start from scratch or from a template, you will still need to make the site your own and place your information into it. 
Remember, this will be the place where you put the rest of your assignments for this class. 

## Grading

The base assessment for this assignment will relate to the completion of the task in full. You will need to link to the following types files on your site (the names will be different, but you should have these extensions):

1. example.txt
2. example.md
3. example.odt
4. example.docx
5. example.pdf

Examples of the types of files and formats that you will want to use are located [here]({{ base.url }}/refsheets/examples/).

If you use a template file, also link to the original version of that. If you made the template, upload it and link to it along with your other files. 

Attention to detail is a key part of the higher-level assessment for this task. Ask yourself the following questions:

1. Does my document look good?
2. Does my document appear to be professionally formatted. 
3. Does it contain the correct attribution information (e.g., title, author, publication date, editor, editing date, source URL, etc.)? 
4. What Pandoc commands did you use to generate your files? 

The formatted text assignment is worth 15% of your total grade. 