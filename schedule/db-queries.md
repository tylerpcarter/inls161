---
layout: default
title: Building a database from scratch
---

# 2015-07-15
## {{ page.title }}

Once we have our data imported into our tables and our fields have all been properly formatted, we have our basic structure in place. 

We can now start to look at some of the more advanced features of the database and learn to utilize them for our whatever purposes we might have. 

If we want to sort and learn about the data we have, a good first stop is to learn how to query it. 

Queries take a set of instructions and use them to sort and categorize data across multiple variables. 

We will look at different possibilities for queries and try some together in class. 

Please look at this documentation for LibreOffice Base for how to create queries:

[Query Design](https://help.libreoffice.org/Common/Query_Design)

You will then be asked to create a query on your own. 

### Joins

When we define relationships in the query designer, you'll notice that there are different joins available to you. 

These are logical inclusion/exclusion criteria for your query at the table level. 
It is a good idea to have some understanding of basically what they are. 

See this visual guide to joins in SQL (remember that the language underlying our queries is SQL):

Moffatt, C. L. (n.d.). Visual Representation of SQL Joins - CodeProject. Retrieved July 15, 2015, from http://www.codeproject.com/Articles/33052/Visual-Representation-of-SQL-Joins

Moffat's guide can help you to better understand each join and what they do. 

Today, we will only use right joins in our example queries. 

Why did we do that?

### SQL reference

Here is what our example queries look like in SQL.

Command to select only the OUP GB books from the catalog list:

```sql
SELECT tblBook.tblBook_Title
FROM tblPublisher RIGHT JOIN tblBook ON tblPublisher.tblPublisher_PK = tblBook.tblBook_PubID
WHERE (((tblPublisher.tblPublisher_Publisher)="Oxford University Press") AND ((tblPublisher.tblPublisher_Country)="GB"));
```

Command to count the OUP GB titles in the catalog list: 

```sql
SELECT COUNT (tblBook.tblBook_Title)
FROM tblPublisher RIGHT JOIN tblBook ON tblPublisher.tblPublisher_PK = tblBook.tblBook_PubID
WHERE (((tblPublisher.tblPublisher_Publisher)="Oxford University Press") AND ((tblPublisher.tblPublisher_Country)="GB"));
```

**FOR TOMORROW:**

Make sure that you review chapters **7** (tables) and **9** (queries) in the LibreOffice Base Tutorial: 

https://wiki.documentfoundation.org/images/0/02/Base_tutorial.pdf

Tomorrow we will be learning other ways to get data and information into and out of our DBs. 
Take a look at chapters **8** (forms) and **10** in the above-linked tutorial to get a head start. 

Previous: [Build a database from scratch]({{ base.url}}/schedule/db-from-scratch/).