---
layout: default
title: Servers
---

# 2015-06-23
## {{ page.title }}

A "server" is a piece of hardware or software that runs a service for clients to connect to. 

<a href="https://en.wikipedia.org/wiki/Client_(computing)#/media/File:Client-server-model.svg" target="_blank"><img width="300px" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Client-server-model.svg/200px-Client-server-model.svg.png" /></a>

Sometimes, certain types of servers are referred to as "daemons." 
Don't worry, your computing infrastructure is not possessed. 

They are called this in reference to Maxwell's demon, which is itself a reference to the ancient Greek notion of a δαίμων (daimon). 
These were spirits that operated the world around us, unseen and unseeable. 
Broadly construed, they were the forces that made all of the otherwise unexplained processes happen in the physical world. 
James Clerk Maxwell adapted this notion to pose potential violations to the Second Law of Thermodynamics. 
His demon acted precisely in the way that the Greek daimon did, except naughty. 

All that aside, a daemon is a "background process." 
Some piece of software that runs on a computer in the background and waits for something to happen. 
These processes listen, typically on a specific port for an event to occur. 
When that event occurs, the daemon executes some set of instructions. 

In a server, that event will be a request for something.

In a web server, that event will be a request for a web page or some other web content. 

On a web server, the daemon that serves the web pages listens on port number 8000, unless otherwise specified. 

When it receives a request on port 8000, it dutifully gathers up all of the requisite parts of the web page, interprets them, and then sends them to your client (a.k.a., your browser) and then all of that information gets prettified and placed on your screen so that it can go into your eyeballs and then your brain. 

**Questions to keep in mind:**

1. Why do we use this model? 
2. What are the advantages? 
3. Why not just run all this stuff on the devices in our hands/pockets/backpacks? 

Previous: [Clients]({{ base.url }}/schedule/clients/). Next up: [Operating on a remote system]({{ base.url }}/schedule/remote/).