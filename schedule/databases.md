---
layout: default
title: What is a database?
---

# 2015-07-14
## {{ page.title }}

A "database" is a collection of information, arranged or organized in some meaningful way so as to aid the retrieval of that information. 
The types of information stored in databases vary based on the purpose and application. 

When we refer to databases now, we usually mean electronic databases or DataBase Management Systems (DBMS). 
However, databases can exist in a number of non-electonic forms (and have for much of human history).

What are some examples of non-electronic databases?

### What goes into a database?

Pieces of information, or objects, are stored in a database in a structured way. 
The objects are sorted into classes according to type. 
This approach is referred to as "object-oriented," which we have briefly touched on over the course of the semester. 

When data are entered into a database, each object, or chunk of information, is assigned a class that allows for sorting and recall. 

### How does the information go in? 

There are a number of different ways to get data into a database. 

We can import tables directly from files. 
We can also input data one at a time using an entry form. 
We will do both of these things over the next few days. 

Today we will start by experimenting with opening the CSV we made the other day as a table. 

### Electronic DBMS

There are myriad choices for DMBS implementations. 
A commonly used system is called MySQL, which is based in a database language called SQL (Structured Query Language). 

You will also hear of NoSQL databases, such as MongoDB. 
These use an entirely different internal logic to store and recall data that that of SQL-based systems. 

There are a great many front-end user interfaces for these systems. 
MSAccess has been used for years for all sorts of applications. 

We will use the LibreOffice Base package. 
It is an open-source analog to Access and will allow us to do the same things. 
One major benefit of this is that we will be able to open our database without being locked to MSAccess. 
At present, there is no way to open an Access DB in another program. 
We wish to avoid that. 

Next up: [Tables]({{ base.url}}/schedule/db-tables).