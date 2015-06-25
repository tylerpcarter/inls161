---
layout: default
title: Version control
---

# 2015-06-25
## {{ page.title }}

Version control systems allow us to track and see the changes to a given document or set of files over time. 
This can be useful in situations where you wish to roll back changes or identify the point of origin for something problematic. 

It is also helpful when you are collaborating and want to be able to keep track of the work being done and changes being made by a group of people. 

Version control can exist in a standalone system or it can be networked and distributed. 

### Track changes

One expression of version control that we are probably all familiar with is the "Track Changes" function in MSOffice. 
It works if one person is using it to track changes between writing session. 
It also might work if two people are exchanging a document and each making changes when they have the document in their possession. 
Each handoff operates like a physical handoff in this case. 

But when you try to track changes with two people and then merge those documents, things become tricky. 
Which changes take precedence? 
How do you merge them together when you have both rewritten the same sentence? 

The process of merging becomes very difficult, very quickly and since the design of that interface wants to hide what is going on underneath, you might miss something and end up with a document that you did not mean to leave or leave something out accidentally. 

### Software source code

In the software development world, there are a number of systems that allow development teams to make small, incremental changes to the source code for a piece of software without losing work, breaking each others code, or stepping on each others fingers. 

The basic idea is that when you wish to make changes to a set of source code files, you have to check them out. 
This is just like checking out a library book, except that there are an infinite number of copies available and you can write on the pages. 
The object that you check out is called a repository. 
When you check it out, you get the source code files themselves, but you also get a whole bunch of metadata about them. 
The metadata includes information about when and how changes and merges have been made to the files as well as any user-generated information. 

Once checked out, you can make changes to the source files and then compile or test to make sure that your changes work. 
Then, once tested, you check them back in. 
Sometimes, the check-in process is fully automated, meaning that no human has to look to make sure that your changes make sense. 
Other time, the check-in needs to be verified. 
There are compelling reasons to use either of these scenarios. 

In such systems, each commit, or incremental change, is registered with a unique identifier. 
This means that the change is tracked and cannot be confused with any other change at any other time. 

When multiple parties are working on the same code, merging can be confusing, unless the changes are properly tracked. 
Version control systems allow us to make sure that merges go as smoothly as possible. 

### Distributed version control

In a fully distributed version control system (DVCS), multiple copies of the same repository can exist on different systems with different operators and still be elegantly reconciled as the same object. 
This means that work can be conducted asynchronously and then merged together later. 
Then length of time and amount of work done on each copy will have an effect on how easy or difficult it will be to merge the source back together. 
It is likely that if a long time occurs between merges, there will be some issues that crop up, particularly if a lot of changes are made. 

It is a good idea to keep your repositories up-to-date. 
It also acts as an easy back up system, if you are storing the repository off-site somewhere. 

### Distributed version control for document processing

Version control of this kind is not just for software development. 
It is possible to use it to manage your own workflow in creating and editing documents. 
It also works for managing different versions of datasets, from raw data to clean, ready-to-analyze data. 

In this course, we are going to use such a system to manage and back up our work.  

You should have read through the following:

Wynn, J. (2014, May 25). [A Hacker's Guide to Git](http://wildlyinaccurate.com/a-hackers-guide-to-git/). 

We will disscuss the fundamental concepts about version control contained in that article. 

Then, for the rest of today's class we are going to experiment with the version control systems that we will operate on and learn how to get our information into them and manage it once it is there.

Next up: [Git]({{ base.url }}/schedule/git/)