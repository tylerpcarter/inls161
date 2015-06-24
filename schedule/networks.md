---
layout: default
title: Networks
---

# 2015-06-24
## {{ page.title }}

We've discussed a bit about how servers and clients operate. 
Now we'll look at what happens when we put lots of servers and lots of clients together. 

A network is a relatively simple concept with some complex underlying technologies. 
Each computer or device in a network can be referred to as a "node." 

Information is transmitted through networks in something called a "packet."

Packets of information are sent from node to node through paths called "routes."

A "router" is a device that receives packets and sends them on to their destination. 

We briefly discussed ports. 
Remember, a port allows for two devices to communicate and specify a protocol through which to conduct that communication. 
Ports are not physical, while routes might be virtual, physical or both. 

Some of the ports that we have encountered:

-	8000 (HTTP)
-	443 (HTTPS)
-	21 (FTP)
-	22 (SSH)

A relatively complete list of ports is avaiable <a href="https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers" target="_blank">here</a>.

### Types of networks (topology)

<a href="https://upload.wikimedia.org/wikipedia/commons/9/97/NetworkTopologies.svg" target="_blank" ><img width="200px" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/NetworkTopologies.svg/200px-NetworkTopologies.svg.png" alt="Types of networks" /></a>

Different networks have different physical or virtual arrangements of devices. 
Above are a few examples, visualized. 

Most of the networks that we deal with on a given day are star networks. 
They might be connected to other star networks so that you will end up with a star of stars. 
In these networks each device connects to a node and then that node sends them elsewhere on the network. 
The node that is used to connect is usually either a router or switch of some kind. 
Connections occur through a single path. 
If a connection is lost, either through physical network failure or through software failure, it is not possible to re-establish the connection unless the route is restored. 

Most local area networks (LANs) operate in this way. 

Some networks allow any device to connect to any other device. 
These are called mesh networks. 

A mesh network is self-healing, which means that if a connection is dropped between any two given devices, the same connection can be re-established through a different route. 
These networks are not typically in use on LANs, but there is a very large one that we interact with on a near-continuous basis. 

Next up: [Inter-networks]({{ base.url }}/schedule/inter-networks/).