---
layout: post
title: "Websites, Markup, and Markdown"
era: Web
tags: 
- websites
- markup
- markdown
- html
- css
category: class
---

This week's tasks will involve some very simple coding (markup, really) and continued exploration and use of our system administration skills. 

Last Friday we learned how to set up a very basic website using Jekyll and GitHub pasges. 
This week we will expand on that significantly, learn how to use markup to change the style of our content, and then learn to publish content to the web. 
<excerpt/>

First things first, we need to know some things about markup. 

# Markup and Markdown

Markup has been used over the last several decades to enhance plaintext for web use. 

Today we will consider some of the basics. 

Markdown is a markup language. 
We had a brief introduction to it last week when we established our first repositories on GitHub. 

## Why are we learning Markdown? 

For starters, Markdown is easier to use than HTML or other markup languages. 
It doesn't require complicated tags, which have a high potential for typographical error. 

Jon Mitchell posits the three following good and compelling reasons that everyone should learn Markdown:{% sidenote 'reasons' 'Mitchell, Jon. “3 Reasons Why Everyone Needs to Learn Markdown - ReadWrite.” ReadWrite. Last modified April 17, 2012. http://readwrite.com/2012/04/17/why-you-need-to-learn-markdown/.' %}

1. It is easy to read. 
2. You will make fewer errors.
3. It helps us to get rid of buggy, crashy, loss-prone content management systems (CMS). 

All of the above boils down to a simple comparison that Mitchell makes:

HTML:

```
<h1>Why <em>you</em> should use Markdown to write your next blog post</h1>

<p><a href=”http://daringfireball.net/projects/markdown/”>Markdown</a> is just so dang legible, it will make your <em>whole life</em> easier. <strong>I promise.</strong></p>
```

Markdown:

```
# Why *you* should use Markdown to write your next blog post

[Markdown][1] is just so dang legible, it will make your *whole life* easier. **I promise.**

[1]: http://daringfireball.net/projects/markdown/basics
```

The above examples render the same thing when parsed. Which would you rather use? 

We will go over some of the basics in class today, but I would also like you to review the resources listed here independently, outside of class. {% sidenote 'markdown' '“Mastering Markdown.” GitHub Guides. Last modified January 15, 2014. Accessed June 27, 2016. https://guides.github.com/features/mastering-markdown/.<br/><br/>This guide is oriented toward GitHub, but the skills represented there extend well beyond that context.' %}

We will work interchangeably in HTML and Markdown over the course of this week.

# HTML5

HTML is an initialism for "HyperText Markup Language."

"Hypertext" is text that contains links to other text.{% sidenote 'markup-history' 'Keith, Jeremy. “A Brief History of Markup.” A List Apart 305 (May 4, 2010). http://alistapart.com/article/a-brief-history-of-markup.' %}
The Web, as we know it, relies on hypertext to for us to communicate with systems and with other humans. 
It is the medium of Web content.

HTML5 is the latest iteration of a standard related to the writing of web content.
Web markup has a long history over the last few decades, beginning with Tim Berners-Lee, one of the fathers of the modern web (and the inventor of HTML).
Berners-Lee proposed the creation of an information management system for the European Agency for Nuclear Research (CERN) in the late 1980's.{% sidenote 'html-origin' 'Berners-Lee, Tim. Information Management: A Proposal. European Agency for Nuclear Research (CERN), March 1989. Accessed June 27, 2016. https://www.w3.org/History/1989/proposal.html.' %} 

When we write Markdown and then post it to GitHub, a system actually translates it into HTML5. 

# For next time

I would like you to look at this tutorial about creating a website using Jekyll and GitHub Pages. 

Clark, Barry. “Build A Blog With Jekyll And GitHub Pages – Smashing Magazine.” Smashing Magazine. Last modified August 1, 2014. Accessed June 27, 2016. https://www.smashingmagazine.com/2014/08/build-blog-jekyll-github-pages/.

We have already done this in a very rudimentary way, but we will do it again to create a better final product. 

Please also look at these themes and choose one for your site. Some have dynamic navigation (those are listed first == easy). You will modify them heavily. 

## Some easy themes

http://jekyllthemes.org/themes/basic/

http://jekyllthemes.org/themes/trading/

http://jekyllthemes.org/themes/devjournal/

http://jekyllthemes.org/themes/gravity/

## More challenging themes

http://jekyllthemes.org/themes/jekyll-clean/

http://jekyllthemes.org/themes/thinkspace/

http://jekyllthemes.org/themes/vitae/

http://jekyllthemes.org/themes/dbyll/

http://jekyllthemes.org/themes/blackdoc/

http://jekyllthemes.org/themes/daktilo/

# Fork

Once you have chosen a Jekyll theme, you will make a copy of it in GitHub on your account. 
We'll use this as an opportunity to get wome web code and see what that looks like. 

You are not committing to anything today: this is just for practice. 
We'll start by going to this repo:

https://github.com/henrythemes/jekyll-starter-theme

This is the repo for a very, very simple Jekyll web theme. 
We will us this as a starter theme to practice with. 

Once you are at the above repo, click the "Fork" button and select your username when prompted to make a copy of the repo in your account.{% marginnote 'fork' '![Click the "fork" button.](/assets/ref-images/fork.png)' %} 

After a few seconds you will be taken to the repo page for the copy that you have made in your account. 

# Configure

Once we have the base theme forked, we need to make sure that the site is going to show up at the right address. 

The address that we want is `http://YOUR-GITHUB-USERNAME.github.io`. This is the default user site address for GitHub pages. 

GH Pages will serve this site from code in the master branch of a repository in your account named the same as the fully qualified domain name (FQDN) or just the full URL to our desired site. 

Therefore, if your GH Pages user site defaults to `http://YOUR-GITHUB-USERNAME.github.io` then we have to make a repository in your account titled `YOUR-GITHUB-USERNAME.github.io`. 
The easiest way to do this is to just change the name of the theme repository that we just forked so that it matches what we need. 

To do this, click the settings tab on your repository page, enter a new name under "Repository name," and then click "Rename."

## \_config.yml

Once we are there, we should be able to look into `_config.yml` file right in GitHub and make sure that our site settings are correct.
We will likely have to change three variables, if they exist: `path`, `url`, and `baseurl`.
These will be different for different themes, so we'll look over this together in class. Basic principles are as follows:

You want `url` to match the desired URL for your site: `http://YOUR-GITHUB-USERNAME.github.io`.

`path` specifies a path where files are held. 
For the GH Pages user site, it needs to have no value. You can either delete that line, comment it, or just put a set of double quotes to specify that Jekyll should not try to rewrite the links and append a subdirectory. It will look like this:

`path: ""`

The same is true for `baseurl`.

All that these do is tell Jekyll where things are when it is trying to build the site. 
Remember, linking is dynamic in the build process, so Jekyll is trying to figure out how to tell your browser where to find stuff that it needs to render the site. 

## Test

Once you have your config set accordingly, then you should be able to look at your site at `http://YOUR-GITHUB-USERNAME.github.io`. 
Don't worry if it doesn't work or if something looks weird. 
Nothing is broken in those cases, you'll just need to troublshoot to figure out what is wrong. This is part of the developmet workflow. 

# Development

A "development workflow" has several stages that happen in order.{% sidenote 'ghflow' '“Understanding the GitHub Flow.” GitHub Guides. Last modified December 12, 2013. https://guides.github.com/introduction/flow/.' %} 
We have been gearing up to think about our work in this context. 

A typical development workflow might conceptually look like this:

1. Create new branch of source code for new feature
2. Work on code for new feature in new branch 
3. Test feature and make fixes if necessary
4. Run with feature in testing environment to ensure that feature works
5. Get feedback about new feature and integrate suggestions if necessary
6. Merge new feature into main workflow
7. New feature is live in production

## Good advice about development and design 

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">&quot;Write the best code possible today and be completely unattached to it and willing to delete it tomorrow.&quot;<a href="https://t.co/mBAJhip0KP">https://t.co/mBAJhip0KP</a></p>&mdash; Adam Wathan (@adamwathan) <a href="https://twitter.com/adamwathan/status/747429538930393088">June 27, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>