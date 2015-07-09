---
layout: default
title: Working with CSV files
---

# 2015-07-09
## {{ page.title }}

### Lists

We'll start with a list of data. 

Open a new file and name it with your GitHub user account and the extension .list. 

Mine will be `jdmar3.list`. 

Inside the file, I want you to give one-word or numerical answers to the following (as specified), in this order, each on their own line:

What is your GitHub username?
How tall are you (in centimeters)?
What time did you wake up this morning (in 24-hour/military time: e.g., 06:30)?
How many semesters do you have left in your degree program? 
Approximately how far is your home city/town away from UNC/Chapel Hill (in km)?

My file will look like this:

```
jdmar3
175.26
06:45
3
1,129.3
```

Very simple. 

### Comma Separated Values (CSV)

Now that we have listed some information about ourselves, lets try to aggregate our data. 

If we want to put all of our data together as it is, we will just end up with a super long list that is difficult for us to use in any meaninful way. 
If we take our list and flip it, so that we have a single line instead, we can then stack all of our data up together. 
We can separate the elements in the list with commas (or tabs, semicolons, pipe separators, or some other marker) and then we will have a row of what will become a Comma Separated Values file: structured data. 

We can do this by hand, but that is boring. 

Let's learn a command to do this:

`paste -d, -s example.list` 

`paste` sequentially reads the lines from a file and then writes them out in the same sequence, separated by something (tabs, by default). 
In this case we are asking it to read every line in our file, and then write it out separated by a comma (`-d,`). 
The `-s` tells `paste` to serialize its operations instead of parellelizing them. 

So our standard ouput (STDOUT) from the above command will be:

```
gh-username,height,wakeup,semesters-left,hometown-distance
```

In class we will discuss writing STDOUT into a file (which you already know how to do) and then aggregating multiple lines into a file (which you already know how to do). 

**For next time:**

I would like you to read the following piece on spreadsheets:

Panko, R. R. (1998). What We Know About Spreadsheet Errors. Journal of End User Computing, 10(2), 15–21. Retrieved from http://panko.shidler.hawaii.edu/SSR/Mypapers/whatknow.htm

I would also like you to read section 2.3, "How does code become software?," from the following: 

Ford, P. (2015, June 11). [What Is Code? If You Don’t Know, You Need to Read This](http://www.bloomberg.com/graphics/2015-paul-ford-what-is-code/). Retrieved from http://www.bloomberg.com/graphics/2015-paul-ford-what-is-code/

In the lab this Friday, we will briefly discuss spreadsheet software and then work on our various projects. 

Previous: [Structured data]({{ base.url }}/schedule/structured-data/).