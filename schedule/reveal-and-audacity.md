---
layout: default
title: Presentation workflow
---

# 2015-07-23
## {{ page.title }}

So, after much struggling, I decided that the recorder is unworkable in its current state. 
It requires too much fiddling and then still doesn't work most of the time. 

The audio-slideshow plugin, on its own, works really well. 

To make sure that it isn't too burdensome, I created a new reveal.js repo with all of the submodules installed correctly and a template for Pandoc that functions a little better than the one that is built into it.

Unfortunately, you will now have to record audio and then put the files in your repo, but that is no big deal. 
You would have had to write links to any audio recorded directly through reveal.js anyway, which decreased its appeal. 

So, start off with this new repo and just make sure that you transfer your 

### Installing the customized reveal.js repo

You should fork it on Github and then change its name to whatever you would like it to be (perhaps "inls161-revealjs"). 
The repo is located here: 

https://github.com/jdmar3/inls161-revealjs-template

Once you have forked and renamed it, then clone it to your DevBox so that you can work on it. 

### Making sure that you are pushing to gh-pages

If you do not do this, your reveal.js presentation will not show up at the correct address. 

Open .git/config and look for the `[remote "origin"]` section. 

Then add the following two lines into that section:

```
	push = +refs/heads/master:refs/heads/gh-pages
	push = +refs/heads/master:refs/heads/master
```

So that the whole file should look something like this:

```
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = git@github.com:YOUR-USERNAME/YOUR-REPO-NAME.git
	fetch = +refs/heads/*:refs/remotes/origin/*
	push = +refs/heads/master:refs/heads/gh-pages
	push = +refs/heads/master:refs/heads/master
[branch "master"]
	remote = origin
	merge = refs/heads/master
```

Then we need to create a new branch. 
This is necessary for github-pages to be able to generate a project page for us. 
The branch must be called gh-pages. 

`git checkout gh-pages`

Let's add, commit and push that just to be sure that it all worked and that our new branch was added. 

Alright. 

We have a new branch and our new branch is going to be synced with our master branch. 
So, we can switch back to master for everything else now. 

`git checkout master`

### Markdown source

IF you are starting from Markdown, you will need to put your markdown source into the newly cloned repo directory. 

You will need to specify some variables. 

Rememeber that the first three lines of your markdown file need to be:

```
% TITLE
% NAME
% DATE
```

Pandoc will use these as variables when it reads your markdown into the template that I have provided.

This command will convert your markdown into a well-formed reveal.js HTML5 file. 

```
pandoc -t revealjs --template=template-index.html -s --variable theme="black" --variable transition="slide" --variable revealjs-url="http://YOUR-USERNAME.github.io/YOUR-REPO-NAME/" YOUR-MARKDOWN-FILENAME.md -o YOUR-HTML-FILENAME.html
```

Here is an example of the command that I ran to get my demo presentation to translate from MD source.
*CAUTION: the gettysburg.md source file is incomplete and very rudimentary. The final product took a lot of editing once it was translated into reveal.js HTML5.*

```
pandoc -t revealjs --template=template-index.html -s --variable theme="black" --variable transition="slide" --variable revealjs-url="http://
johndmart.in/inls161-revealjs-template/" gettysburg.md -o gettysburg.html
```

Once you are sure that your Markdown file has translated correctly you can copy it over the existing index.html file. 

Make sure there is a file called `index.html.bck`. This is a backup. If there isn't one, do this first: 

`cp index.html index.html.bck`

Then you can copy your newly created html:

`cp YOUR-HTML-FILENAME.html index.html`

### Viewing work in progress

Once you have come this far, use Git to add, commit and push to your remote. 
Once you have done so, you should be able to see your slides in their early state at: http://YOUR-USERNAME.github.io/YOUR-REPO-NAME/

### Starting with HTML5

If you start with the existing HTML5 document, make sure that you change a couple of things in the head. 
It will also be useful to check on these things after you have converted your markdown. 

1. Find the line where it says `<base href="">` and change it so that it has the url where your presentation will be `<base href="http://USERNAME.github.io/PRESENTATION-REPO-NAME">`
2. Change the `<title>` so that it has the title of your presentation. 
3. Change the `<meta name="author" content="NAME">` so that it has your name. 
4. Find the CSS/stylesheet line with `id="theme"` (`<link rel="stylesheet" href="css/theme/sky.css" id="theme">`) and change it to whatever theme you like. The themes are located in the `css/themes/` directory. 

#### Adding a section 

Remember that each section is a slide, so to make a new slide, just add a new `<section> </section>` and then put your slide content between it. 

To add a background, you add either a URL or a Hex color number inside the section tag: 

1. `<section data-background="http://SOME-IMAGE.png"> </section>`
2. `<section data-background="#56A0D3"> </section>`

If you put your images in a subdirectory (which you should) you can link to them either with the relative path:

`<section data-background="images/SOME-IMAGE.png"> </section>`

Or the fullpath:

`<section data-background="http://USERNAME.github.io/PRESENTATION-REPO-NAME/images/SOME-IMAGE.png"> </section>`

You should not have to specify the fullpath if you do not want to, because we have already set the base URL for the presentation in the `<base>` tag in the head that we edited above. 

#### Adding audio

Adding audio is relatively simple, once you have some audio to add. 
You will need to record some and then put the individual sound files in a subdirectory called `audio`. 

Once that is done, you will need to add `data-audio-src="audio/SOME-AUDIO.ogg"` to your `<section>` tags. 

The section tag will now look like this: 

`<section data-audio-src="audio/SOME-AUDIO.ogg" data-background="#56A0D3"> </section>`

You can also add an id to each `<section>` tag so that they are easier to navigate: 

`<section id="01" data-audio-src="audio/SOME-AUDIO.ogg" data-background="#56A0D3"> </section>`

In the next section, there are instructions on how to use Audacity to create your sound files.

### Installing Audacity

Look for the correct installer at the download site for Audacity's current version. 
DMG for Mac and EXE for windows. 

http://sourceforge.net/projects/audacity/files/audacity/2.1.0/

Install the software as you normally would install something. 

Specific instructions here, if you need to troubleshoot: http://manual.audacityteam.org/o/man/faq_installation_and_plug_ins.html

### Recording audio

Make sure that you have a microphone plugged and then open Audacity. 

To record, press the record button on the top bar or press SHIFT+R. 

To stop, press the SPACE BAR. 

For playback of audio that you have just recorded, press the SPACE BAR again. 

<img src="{{ base.url }}/schedule/images-audacity/controls.png" width="200px" alt="Audacity Controls" />

You can move backward and forward in the track by using the LEFT <- and RIGHT -> cursor keys. 

It is a good idea to save as you go, so that you do not lose anything. 

The file will save as an AUP file. 
That is Audacity's project file format. 
It will allow you to open the whole project with all of your audio saved in it. 

Look here for documentation about getting started recording your audio: 

http://manual.audacityteam.org/o/quick_help.html

#### Recording chunks of audio for each slide

If you want to record audio for each slide event in an individual file, which is a good approach, simply record the audio and then when you are satisfied with it, export it as an OGG Vorbis file. 

You can press CTRL+SHIFT+E or select "Export Audio..." from the "File" menu. 
You'll want to give the file a number so that you can keep them in order. 

For example, call the file "01-first-slide.ogg" or something along those lines. 

<img src="{{ base.url }}/schedule/images-audacity/export-audio.png" width="200px" alt="Audacity Export Audio" />

Select "ogg Vorbis file" from the menu and then press save. 

The dialog will prompt you to add tags. You can if you wish, but it is not necessary. 

You can open a new project for each audio file. 

#### Recording all at once and splitting into separate files

Once you have your presentation text in your slides, or if you want to read through your script and then break up the audio, you can do this by using a "label" track and the "Export Multiple..." function in Audacity. 

In this method, you will record your whole presentation, and then split the track into smaller tracks with numbered filenames. 

<a href="{{ base.url }}/schedule/images-audacity/label-track1.png"><img src="{{ base.url }}/schedule/images-audacity/label-track1.png" width="200px" alt="Label Track" /></a>

To add a label track click: Tracks > Add New > Label Track.

This is just a reference track for you to break the audio apart into multiple files. 

To set a label, click on the wave form in the track where you want the label to be and then press CTRL+B, write the name of the label and press enter. 
You can edit labels by clicking on them in the label track. 

<a href="{{ base.url }}/schedule/images-audacity/label-track2.png"><img src="{{ base.url }}/schedule/images-audacity/label-track2.png" width="200px" alt="Label Track" /></a>

Documentation: http://manual.audacityteam.org/o/man/label_tracks.html

Make sure that you are thinking about where slides begin and end in your script. 
The easiest way to do this is to record first and then listen. 
As you listen ou can pause and move back and forth to get your selector in the right position before creating a label with CTRL+B. 
Your labels should be positioned at the beginning of your desired audio clips. 
Keep this in mind and make a label at the beginning of the track for the first slide's audio. 

When you have finished labeling. Select File > Export Multiple... and a dialog will pop up. 

<a href="{{ base.url }}/schedule/images-audacity/export-multiple.png"><img src="{{ base.url }}/schedule/images-audacity/export-multiple.png" width="200px" alt="Export Multiple" /></a>

You should select OGG Vorbis files and under "Name files:" select the middle option, "Numbering before Label/Track Name."

Choose an export location (you'll be uploading these to CodeAnywhere or Github directly). 

Then press export. 

Documentation: http://manual.audacityteam.org/o/man/export_multiple.html

You will be presented with the same tag editing interface as mentioned above, except this time for each file. 
So just press okay on that dialog until it is finished. 

<a href="{{ base.url }}/schedule/images-audacity/tags.png"><img src="{{ base.url }}/schedule/images-audacity/tags.png" width="200px" alt="Tags" /></a>

### Putting the files in the right place

You should end up with a file list that looks something like this:

```
01-four_score.ogg
02-our_fathers.ogg
03-on_this_continent.ogg
04-a_new_nation.ogg
05-conceived_in_liberty.ogg
06-and_dedicated.ogg
07-all_men.ogg
08-equal.ogg
09-now_we_are_engaged.ogg
10-civil_war.ogg
11-that_nation.ogg
12-any_nation.ogg
...
```

The files should be relatively small. 
They are just short clips. 

Probably the easiest way to get these files into CodeAnywhere is to zip them up in a ZIP file and then upload them by right clicking on the correct directory in your tree. 

Then unzip them into the directory where you want them using the unzip command. 

Do `ls` to see that the ZIP file is in the right place. 

Then do:

`unzip audio.zip` 

In that same directory. 
You will have to put the name of your ZIP file instead of "audio.zip." 

The files should unzip there and then you are ready to put links into your `<section>` tags as mentioned above.

### Add audio to section tags

Just to make sure that it is clear, the way that you add audio to a slide is by making your `<section>` look like this:

```html
<section data-audio-src="audio/SOME-AUDIO.ogg" data-background="#56A0D3"> 
	<h2>
		SOME SLIDE TITLE
	</h2>
	<p>
		Some other text.
	</p>
</section>
```

The `data-audio-src` takes care of adding the audio link so that it will play automatically. 

### EXAMPLES 

Make sure that you use the examples in the `orig-index.html` file and in `index.html`.
They both have lots of good examples in them that you can use. 

The index.html file is one tht I created. 
It has mostly examples sound with a background image or some very sparse text. 
Very easy. 

To view that demo, follow this link, and then mouseover the bottom part of the screen to see the controls for the audio and then press the play button:

http://johndmart.in/inls161-revealjs-template/

The rest of the presentation will play from that point forward. 

### QUESTIONS

If you have any questions or get stuck, email me ASAP. 

If you use Google Hangouts / GChat, add my email john.d.martin.iii@gmail.com. 
I will respond very quickly through that interface. 
