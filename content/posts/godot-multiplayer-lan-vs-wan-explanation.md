---
title: "Godot Multiplayer LAN vs WAN Explanation"
date: 2023-06-19T11:21:25-06:00
---

> hi, I recently followed the godot multiplayer top down tutorial and everything worked perfectly until I uploaded the game to itch and tried to play with a friend. Does the game not support connection between places or did I mess something up?

Of gotten many comments like this ^ all over YouTube and Discord.

Here's my long explanation about networking, hopefully it makes sense, I'm tired of answering the same question, so yall can see it here.

---

That requires port forwarding. The game works perfectly fine under the local network, but it requires extra configuration for the wide area network. LAN (local area network) != WAN (wide area network)

But here's the basic idea currently this game runs off of the local network. Meaning all of the devices under are network are handled under the same router. That router assigns ip addresses to each device that connects to it. In Godot we can communicate between each of the clients via their ip addresses. It's a unique identifier that helps it find the devices under the local network.

Now let's talk about connecting outside your local network. Your friend is not connected to your router, instead they have their own router and their own local network. Therefore under the current circumstances it is impossible for your friend to connect to your game. In order for your friend to connect to your game they will have to connect to your public router ip address.

So local and public addresses are different. Every device under your network is assigned a local address. So in order to connect to a certain device you have to be under the same network, and you can find it via it's unique address. Public ip addresses are different. Your router is assigned a public unique ip address. Only your router, no other device on your network is assigned this address. Now I can connect to your friend's router if I know their public ip address. But here's the thing, you can only send data to the router, no other device on their local network will receive data. The router acts as a gateway to the public internet, hence why it has a public ip address. It's able to connect to other routers via their public ip addresses.
But there is this thing called port forwarding. When I send data to the router I can send it to a specific port. Usually websites send data to port 80 and encrypted ssl websites will send data to port 443. Now if I want to for example host a website, I can have a server run under the local network. This server will serve the web pages, so in order to make it accessible to the public internet, I would port forward 80 and 443 to it's local ip address assigned by the router. For example the router gets a request at port 80 and from that it forwards it to the computer on the local network. The computer gets the request, and sends those files back to the router which sends the files back to the person's router that's connecting to the website, which then gets sent back to their local computer. Basically router gets request at port 80 -> forwards to home computer -> sends data back to my router -> sends data to friends router -> sends data to friends computer.

So what you would want to do for your own game is port forward the port we used in the tutorial in the router settings back to the local address of your computer hosting the game. You can access your router's settings via it's ip address which could be 192.168.1.1 or something similar you can find the gateway / router ip address by typing ipconfig in your terminal on Windows.

Known issues:
Your ISP (Internet Service Provider) may not want you port forwarding, as it could potentially pose a security risk.
Your server's local ip address changes every time it boots, so the solution would eventually break. You can request a static ip address for that device in the router settings to fix this issue.
Your public ip address (router's ip address) will change every time it reboots as well. So if the power goes out and comes back, your server will break. You can fix this by requesting a static ip address from your ISP. Although not all ISP's will give you a static ip.
If you don't want to jump through all these hoops to host your game on the local network, you could cloudhost.
There's plenty of places selling VPS hosting, or you can use AWS (Amazon Web Services) which handles almost all of the process for you, you just have to pay for server usage.

Anyways sorry for the long comment, there's a lot to think about when it comes to networking, and it gets pretty complex. Hope this is helpful.
