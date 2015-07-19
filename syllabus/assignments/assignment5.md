---
layout: default
title: Assignment 5 - Database
---

# {{ page.title }}

**Due: 2015-07-22**

This assignment involves creating a database and running some queries.

You have two alternatives for completing this assignment. 
They are listed below.

Instructions for Option 1:

1. Beginning with the ODS file linked here, import the data in each worksheet into two database tables using LibreOffice Base. 
2. Once you have the data in the tables, you will need to make several queries and save them. Here are some examples:
	*	Select all of the books published by Oxford University Press in the United States.
	*	Count the books returned by the above query.
	*	Find the Average retail price of books in the database, along with the minimum and maximum prices of the books listed. 
	*	Find how many total physical volumes are represented in the database (note that this does not mean the number of titles in the database, but rather the number of copies).
3. Create a form for data input and editing. You can do this with the form wizard. Remember that you have to ungroup the field entry boxes from their labels in order to update the labels.  
4. Create a report (template) for one or more of your queries using the report wizard. 
5. Save and upload and ODB file to your content directory on CodeAnywhere and then link it on your content page. 
6. Remember to use Git to add, commit and push all of this so that it shows up on your site. 

Instructions for Option 2:

1. Use MySQl to import the tables in the CSV files linked here into a new database. 
2. Link the tables by setting the primary key for the table with publisher info as a foreign key in the table with book info. 
3. Make some queries and write the results of the queries into new tables. Use the prefix "qry" instead of "tbl" to make a distinction between the two. 
4. You can use the query instructions from the ODB option above or use examples similar to those in the lecture notes. 
5. Export your database and save it as `booksinfo.sql`. 

More detailed information about how to do all of the things in this assignment is available either in the lecture notes directly or from links therein. 
Use those and other resources to solve issues and problems that you might run into in the process. 

## Grading

Grading for this assignment is based on the completeness of your fileset and also of the data in the files. You should have one database file linked on your site:

1. booksinfo.odb OR booksinfo.sql (depending on choice above)

These files should be uploaded to your class site for submission. If you were in class and went through the hands-on-keyboard exercises then, you should be able to submit what you created in class. It may need a little tweaking here and there, but should be relatively complete. If you get stuck and need some help, please do not hesitate to ask me. 

The formatted text assignment is worth 15% of your total grade. 