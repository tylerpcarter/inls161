---
layout: default
title: Tables
---

# 2015-07-14
## {{ page.title }}

The basic storage template in a database is a table. 

This is simply a set of data arranged into columns and rows. 
Just like with the data that we generated previously, the rows represent lists of information that are related to a specific thing. 

The rows in our tables are called "records."

The columns then represent the types of information that we are organizing. 

Tables on their own are fine for storing a collection of data, but what if we have a lot of repeating data that we do not want to have to store over and over again in the same table?

### Relationships

The primary method of reducing this sort of data is by creating more tables and then defining relationships between them. 

There are three categories of relationship:

	* One-to-One: Each record in a table has only one relationship to one other record in another table
	* One-to-Many: Each record (by primary key) in a table can have zero, one, or many relationships to records in other tables. 
	* Many-to-Many: Each record in a table can have any number of (or zero) relationships to records in other tables. 
 	
Can you think of any examples of relationships like this? 

Please read the following post about defining relationships in relational databases:

Harkins, S. (2003, April 30). Relational databases: Defining relationships between database tables. Retrieved from http://www.techrepublic.com/article/relational-databases-defining-relationships-between-database-tables/

The whole TechRepublic series on relational databases is useful. It would be worthwhile to read all of it. 

### Primary Keys

A primary key, as mentioned above, is a designator associated with each record that distinguishes it from all other records. 
When creating a table with a one-to-many relationship, you will need to create a primary key for each new record. 

What are some possible pieces of existing information that might be used as a primary key?

What might be some problems with using an existing piece of information as a primary key?

### Base

We're going to explore importing a table in LibreOffice Base. 
If we have time, we will jump ahead and look at adding forms. 

**For tomorrow:**

Please have a look through the Base Handbook, provided by the LibreOffice community and the Open Document Foundation:

https://wiki.documentfoundation.org/images/e/e8/BH40-BaseHandbook.pdf

It will help you to familiarize yourselves with some of the terminology involved in creating, designing, using and maintaining databases. 

Look through the Base Tutorial, in the sections on tables and relationships (chapter 1):

https://wiki.documentfoundation.org/images/0/02/Base_tutorial.pdf

It would be a good idea for you to also look ahead to chapters 7-10 in the Base Tutorial. 
We will be covering these topics over the rest of this week. 

Previous: [What is a database?]({{ base.url}}/schedule/databases/).