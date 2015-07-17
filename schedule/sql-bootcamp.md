http://boingboing.net/2015/07/16/escaping-the-new-media-cargo-c.html

http://queue.acm.org/detail.cfm?id=1039523

##Install MySQL

First update and upgrade all packages:

`sudo apt-get update && sudo apt-get upgrade`

Then we have to install one dependency, without which the install will fail:

`sudo apt-get install bsdutils`

Then install both the MySQL server and client packages in separate commands. 

`sudo apt-get install mysql-server`

This will ask you to create a password for the MySQL root user. 
Since we are only trying things out today and not installing this for the purpose of running a real SQL server, just put `changethis` as the root password. 

Then install the client:

`sudo apt-get install mysql-client`

## Get some data

Let's download some CSV files that I prepared with our books list in them. 

`wget http://inls161.johndmart.in/raw-material/tblBook.csv http://inls161.johndmart.in/raw-material/tblPub.csv`

## The MySQL prompt

Once we are all installed, issue the `mysql` command to get into the `mysql>` prompt:

`mysql -u root -p`

This specifies that you want to use the root user to login to the MySQL prompt. 

Next let's create a new DB. Make sure that your prompt looks like this:

`mysql> `

If it does, then you can type:

`CREATE DATABASE booksinfo;`

Commands in the `mysql>` prompt are *case-sensitive,* so pay attention to the case of the commands. 

Let's list our DBs:

`show databases;`

We should see the DB with the name that we created in the list. Let's move into it:

`USE booksinfo;`

Now we have to create two tables so that we can import data from our CSV files.

`CREATE TABLE tblBook (tblBook_PK INT, tblBook_Title VARCHAR(255), tblBook_Date INT, tblBook_RetailPrice DECIMAL(5,2), tblBook_Copies INT, tblBook_Shelf Number VARCHAR(255), tblBook_PubID INT);`

`CREATE TABLE tblPub (tblPublisher_PK INT, tblPublisher_Publisher VARCHAR(255), tblPublisher_City VARCHAR(255), tblPublisher_State VARCHAR(255), tblPublisher_Country VARCHAR(255));`

Let's import some tables from the files we downloaded earlier:


