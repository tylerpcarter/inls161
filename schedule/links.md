---
layout: default
title: Linking
---

# 2015-06-30
## {{ page.title }}

Linking is what makes the Internet what it is in terms of how information is organized. 
Without links, we would have to know the location of every single thing we wish to get to. 
We would have to index everything: that is, we would need a list. 
Linking allows us to move between resources, call and embed resources within one another, and in some cases find resources based on their relationships. 

### Relative and absolute paths

We have choices about how we can link to resources. 

Let's look at the links in the examples on the last page:

```html
<link rel="stylesheet" href="css/styles.css">
<script src="js/scripts.js"></script>
<img src="images/pretty.img" alt="A pretty picture" />
<a href="index.html" title="Home">Return home.</a>
```

These are all examples of relative paths. 
This means that they assume that the files referenced here are located near our index page. 

If we were to represent the same links with absolute paths, we would have to add the domain name / hostname also. 
See below:

```html
<link rel="stylesheet" href="http://www.somewebsite.com/css/styles.css">
<script src="http://www.somewebsite.com/js/scripts.js"></script>
<img src="http://www.somewebsite.com/images/pretty.img" alt="A pretty picture" />
<a href="http://www.somewebsite.com/index.html" title="Home">Return home.</a>
```

Let's consider the advantages and disadvantages of each of these approaches and ask these questions:

1. What happens if we have to change our doman name or move to a different server?
2. Is there perhaps a way to automate such a change and still provide an absolute path?

Previous: [Static sites]({{ base.url }}/schedule/static/). Next up: [Dynamic sites]({{ base.url }}/schedule/dynamic/).