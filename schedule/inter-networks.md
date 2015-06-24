---
layout: default
title: Inter-networks
---

# 2015-06-24
## {{ page.title }}

The Internet is a mesh network. 
When you connect to something on the Internet, you will not always take the same path to get to it. 

There are a few things that we need to understand about the Internet in order to know how our information gets from one place to another. 

Ports and routes allow us access to specific devices using specific protocols. 
Those devices are called "hosts" when they are arranged in a network or inter-network. 
Each host has to have a name or address which allows it to be identified on the network. 
However, when we request something online, we are not reaching out directly to a device, even if we know where it is and how it is named. 

### Layers

Inter-networks have several layers. 

1. Link-layer: communication between hosts on a single network
2. Internet layer: communication between networks 
3. Transport layer: communication between hosts
4. Application layer: communication between processes

The communication protocols that are used to govern how information is routed through these layers are called Transmission Control Protocol and Internet Protocol (TCP/IP).

TCP/IP governs the way that all information is routed through networks. 

These protocols are how we derive addresses on networks. 
Different networks have different modes of addressing, but they use a similar structure. 
It looks something like this:

`192.168.1.1`

Each number in that string of numbers represents a "subnet." 
Knowing the numbers in sequence allows for traffic to be routed from one subnet to another. 
The whole string of numebrs together is the address for an individual host/node on the network. 

### Names

So how is it that when we type `http://www.unc.edu` into a browser navigation bar that we end up at UNC's website? 

This is achieved through something called Dynamic Name Service (DNS).

DNS maps domain or host names onto IP addresses, which allows us to use human-readable names for places on a network. 
We use this on the Internet so that we can type `unc.edu` instead of having to remember that UNC's webserver is located at `152.19.230.139`.

DNS is hierarchical and uses a mesh in order to maintain service globally. 
Most institutions run their own cacheing nameservers which allow faster LAN access to routing information for domain names. 

There are 13 "root name servers" globally that mirror each other. 
They are listed <a href="https://en.wikipedia.org/wiki/Root_name_server#Root_server_addresses" target="_blank">here</a>.
When you make a change to the DNS information related to a site or host, it propagates through this network of root servers. 

When we type `unc.edu` into a browser or other network tool, a query is made against a DNS server somewhere and the DNS server then tells us where that domain is located physically (or in some cases virtually).
Then a request is made to the nearest routing host on our network which sends the request to the next and to the next until it hits its destination. 
When the request arrives at its intended target, that host responds by attempting to fulfill the request and route the information back to the origin of the request. 

*Et voila!* It all happens in the blink of an eye.

Next we will look at some methods for figuring out what is happening on a network during that blink. 

Previous: [Networks]({{ base.url }}/schedule/networks/). Next up: [Network tools]({{ base.url }}/schedule/network-tools/).