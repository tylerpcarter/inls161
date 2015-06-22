---
layout: default
title: The Easy Way, The Hard Way, and the Right Way
---

# 2015-06-22
## {{ page.title }}

This is the meat of today's lecture. 

As previous mentioned in the notes, this class is about challenging your boundaries with basic technological tools. 
This will mean sometimes learning what seems to be a really complicated way of doing something that seems like it should be simple. 

But things are not always as they appear. 

You may think that it is simpler to create a webpage using some specially-designed interface for web design or, worse, creating a document in MSWord and then either copying and pasting that your work into a what-you-see-is-what-you-get (WYSIWYG) editor or exporting to HTML. 
You can do this, but if you want to use your markup later on or understand what is happening (as we do in this class), it is not a good option. 

For example, if you want to make a PDF that is well-formatted, you have a few options as well. 

One toolchain looks like this: 

`LibreOffice Writer (software) > ODT (file format) > Export as PDF (file format)`

Another looks like tihs:

`Markdown (plaintext markup) > Pandoc (software) > LaTeX (software) > PDF (file format)`

The difference here is the way that the SOURCE of the files are conceived. 
The source for the first option is wrapped up in the interface somewhere. 
We can't see it. 
The source for the second option is the original plaintext file using markup to tell the interpreter what to do with it. 

**Why is this second approach advantageous?**

Let's look at a second usage scenario. 
Let's say that I want to have the same document that I put into PDF, but as a web page also.

From LibreOffice, I have to export HTML and then upload it to a web server. 
Fine. 

If I start with Markdown, however, my toolchain looks like this:

`Markdown -> Pandoc -> HTML` 

What is better yet is that since the tools in this scenario rely on marked-up plaintext and commands that can be executed without a graphical user interface (GUI), I can probably create the documents server-side rather than having to upload them after working on them locally. 

This approach helps with automation and also with having multiple desired output formats that can come from a single source. 

There are easy ways to do everything, and there are hard ways to do everything. 
Neither are ever going to be the right way all the time. 
The method that you use to complete a task has to depend on the context of the task. 
The right way will fall somewhere in the middle or be an amalgam of both. 

We'll talk more in the next few sessions about operating on a system using the command line for giving instructions and running programs. 

**For the next session:**

For now, I would like you to have a look at the following resource: 

*<a href="http://linuxcommand.org/lc3_learning_the_shell.php" target="_blank">Learning the Shell*</a> by William E. Shotts, Jr. 

Go through each of the steps in the contents listed on that page and try out the commands in your CodeAnywhere DevBox interface that we set up. 

Previous: [Tools]({{ base.url }}/schedule/tools/).


