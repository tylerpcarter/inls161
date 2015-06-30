---
layout: default
title: Static sites
---

# 2015-06-30
## {{ page.title }}

If we are making a website with only a single page, then the static approach described in our HTML guides is the way to go. 
We need not complicate matters if we will not be creating multiple pages. 

### Markup

We can follow this basic template:

```html
<html>

  <head>
    <title>TITLE</title>
    <link rel="stylesheet" href="css/styles.css">  
  </head>

  <body>
    <div>
      <p>Some content.</p>
	</div>  
  </body>
  
</html>
```

This markup example will produce a very basic page. 
It is not fully-formed, but it doesn't neet much more to be. 
Using the basic syntax that we have observed, we can turn our plaintext into formatted text. 

As we previously discussed, this markup is nested. 
Each tag has to be open and closed. 

The `<head>` section of the above block is where we can put various types of metadata and link to style files and scripts. 

The `<body>` section in the above block is where we put the content that we actually want displayed to the world. 

A more complete example of this type of code is found below:

```html
<!doctype html>

<html lang="en">

<head>
  <meta charset="utf-8">

  <title>TITLE</title>
  <meta name="description" content="DESCRIPTION">
  <meta name="author" content="AUTHOR">

  <link rel="stylesheet" href="css/styles.css">

  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>

<body>
  <script src="js/scripts.js"></script>
  <div id="wrapper">
    <h1>
	  A Header
	</h1>
      <p>
	    Some content.
	  </p>
	  <h2>
	  	A second-level header
	  </h2>
	    <p>
		  Some more content.
		  
		  And an image: 
		  <img src="images/pretty.img" alt="A pretty picture" />
		</p>
		<p>
		  <a href="index.html" title="Home">Return home.</a>
		</p>
  </div>
</body>

</html>
```

### Style

These blocks link out to a CSS file in the head section. 
There are some other things going on as well, but let's focus on the style for now. 

A basic CSS file that would work for this page would look something like this:

```css
body {
    background-color: #56A0D3;
}

div#wrapper {
	background-color: #fff;
}

h1 {
    color: black;
    text-align: center;
}

h2 {
	text-align: left;
}

p {
    font-family: "serif";
    font-size: 14px;
}
```

### Structure

We'll give this markup a try to see what happens and see if it works. 
In order to do this, we'll need a directory structure that looks like this:

```
./
├── index.html
│
├── css/
│   └── styles.css
|
├── images/
│   └── pretty.img
│
└── scripts/
    └── scripts.js
```

Be sure to review at least the introductions for the W3CSchools tutorials for HTML5 and CSS3. 
These tutorials are a good reference resource for all of your basic web-coding needs going forward. 

W3CSchools HTML(5) Tutorial http://www.w3schools.com/html/default.asp

W3CSchools CSS Tutorial http://www.w3schools.com/css/default.asp

Next up: [Linking]({{ base.url }}/schedule/links/).