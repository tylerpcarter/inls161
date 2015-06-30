---
layout: default
title: Dynamic sites
---

# 2015-06-30
## {{ page.title }}

A dynamic site allows for the generation of sites from component parts on the server. 
Instead of serving a complete page that was written as a single object, the server puts the parts together based on some instructions or framework and then serves the finished page.
This process is called "server side scripting."

There are a number of systems available for dynamic web service. 
Their internal logics and mechanisms are different. 

PHP (PHP Hypertext Processor) is one language for dynamic web pages. 
It is now a two-decades-old web standard and very robust. 

It is also somewhat complicated to learn to use very well. 
It takes a fairly long time and it is easy to go down a rabbit hole learning the ins and outs. 

We will used a newer, more flexible system for server-side scripting called <a href="http://jekyllrb.com/" target="_blank">Jekyll</a>. 
Jekyll is a page builder, built on Ruby, that allows for the the use of Liquid escapes and commands in order to create web pages from component files dynamically. 

<a href="http://liquidmarkup.org/" target="_blank">Liquid</a> is another form of markup (get the theme here?). 
Jekyll parses Markdown, HTML and Liquid from template files and then inserts information stored centrally in order to construct the web page. 

This is the basic system that GitHub Pages runs on. 

### Why dynamic sites? 

Well, for one, repeating work is terrifically boring, and a terrible waste of our time.  

What happens if we want to write multiple pages, but we plan to have the same head section at the top, the same stylesheet, the same basic structure? In other words: we need a template. 

Jekyll allows us to create templates using HTML and Liquid markup (or use existing templates) into which we place our content using Markdown. 

In other words, Markdown is the medium for our content, HTML is the medium for our structure, and Liquid provides the limks between the two. 
Jekyll parses the whole thing and prepares it to be served online. 

### Structure

A basic file structure for Jekyll looks like this:

```
./
├── _config.yml
│
├── css/
│   └── styles.css
|
├── _data/
│   └── ...
│
├── _drafts/
│   └── ...
│
├── _posts/
│   └── 2014-01-01-hello.md
│
├── _layouts/
│   ├── default.html
│   └── post.html
│
├── _includes/             
│   ├── header.html
│   └── footer.html
│
├── index.md
|
└── _site/
    └── ...
```

Hierarchically, Jekyll constructs the page something like this:

```
_config.yml
default.html (in _layouts)
	header.html (in _includes)
		content.md (information in Markdown files)
	footer.html (in _includes)
```

### Code breakout

If we take our code blocks from earlier and split them up, they will look something like this.

`_layouts/default.html`

```html
<!doctype html>

&#123;% include header.html %&#124;

\{\{ content \}\}

\{\% include footer.html \%\}
```
In the file above, we set where different parts of the page will go. 
The curly braces offset our Liquid markup.

The next two files give us the structure that goes at the top and the bottom of every page. 
Pay attention to the Liquid tags and see what they are doing. 

`_include/header.html`

```html
<html lang="en">

<head>
  <meta charset="utf-8">

  <title>\{\{ site.title \}\}</title>
  <meta name="description" content="\{\{ site.description \}\}">
  <meta name="author" content="\{\{ site.author \}\}">

  <link rel="stylesheet" href="css/styles.css">

  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>

<body>
  <script src="js/scripts.js"></script>
  <div id="wrapper">
```

`_include/footer.html`

```html
  </div>
</body>

</html>
```

Note that the tags that open `html`, `body`, and `div` in `header.html` are not closed until `footer.html`.
These two files function as a wrapper for our content.

The following file gives us the content for the actual index page. 

`index.md`

```
# A Header

Some content.

## A second-level header

Some more content.

And an image: 

![A pretty picture](images/pretty.img)

[Return home.](index.html)
```

Finally, we need a config file to give us the variables that show up in the header:

`_config.yml`

```yaml
# Site settings
title: TITLE
description: DESCRIPTION
author: AUTHOR
```

### Pay now or pay later

The major issue that we are dealing with is whether to spend a lot of time doing something over and over again throughout the course of our projects, or to spend some time at the beginning setting everything up the way that we want it and then using get down to the business of writing our content.

Certainly, you can start with content. 
You can even put the content into an interface if we need to throw something together very quickly. 

However, we are best served by spending some time engineering our presentation and our workflow from the beginning. 

**For next time:**

Spend some time looking at the following links about Jekyll:

Greiling, M. (n.d.). Jekyll From Scratch - Getting Started. Retrieved from http://pixelcog.com/blog/2013/jekyll-from-scratch-introduction/

Cruz, R. S. (n.d.). Jekyll Cheatsheet. Retrieved from http://ricostacruz.com/cheatsheets/jekyll.html

Your next task will be to create a new branch in your repository and create a Jekyll-based site in it. 
We will look at how to do that in the next class. 

Gold stars for everyone who figures it out in advance. :) 

Previous: [Linking](\{\{ base.url \}\}/schedule/links/). 
