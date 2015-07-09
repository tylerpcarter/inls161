---
layout: default
title: Raw data
---

# 2015-07-09
## {{ page.title }}

So, data? 

What is data? 

Rather, we should ask: "What are data?" 

datum, data, *n* - something given (past participle of the verb, *dare,* "to give").

Where does it come from? What do we use it for? What does it all mean? 

The major question that we are going to be asking ourselves here is "How are we going to get data into and out of different formats?" 

We will start with lists of similar data and then move to structured and ordered sets of lists (tables). 

Eventually we will consider linked sets of data in the form of databases.

### Raw data

"Raw" data is sort of an oxymoron. 
There is very little data available that is actually really raw in the sense that it has not been touched, manipulated, massaged, curated, or cleaned by some human intervention. 

Remember, even data that is available on the web is not raw, it is text that we have marked up and structured in specific ways. 
However, web data can stand in as an analog for raw data. 

The process through which we might gather data via the web is referred to as "scraping." 
A "scraper" is a program that reaches out into the web and grabs all of the text (including markup) available at a URL and saves it in some meaningfully structured way. 

We're not going to dig into web-scraping too much, but I want you to be aware of how data can be gathered on the web. 

One tool that can be used for web scraping is our friend, `wget`. 
We've used it to download remote files, but it can also be used to get whole websites and all of the data linked from them. 

This can be useful for mirroring a website. 
It can also be useful in aggregating unstructured data so that it might be manipulated into structured data. 

Next up: [Structured data]({{ base.url }}/schedule/structured-data/)