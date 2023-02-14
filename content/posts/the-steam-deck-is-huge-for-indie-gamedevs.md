---
title: "The Steam Deck Is Huge for Indie Gamedevs"
date: 2022-06-08T15:40:00-06:00
tags: ['tech', 'gamedev', 'linux']
---
![Steam Deck](/images/posts/steam-deck-is-huge-for-gamedevs/steam-deck-closeup.webp)

The [Steam Deck](https://www.steamdeck.com/en/) is gonna lead to the biggest shift in the pc gaming industry.

## A hitch hikers guide to the Steam Deck 🕹️
The Steam Deck is a handheld x86 based computer. It runs a custom AMD APU running Zen 2 and RDNA 2. The Steam Deck runs [Arch Linux](https://archlinux.org/) as it's kernel in it's custom operating system called Steam OS 3.0.

### Steam OS Beginnings
![Steam OS](/images/posts/steam-deck-is-huge-for-gamedevs/big-picture.webp)

[Steam OS has been around ever since the end of 2013](https://en.wikipedia.org/wiki/SteamOS). Gabe Newell had a very clear vision for Steam OS. At LinuxCon he stated ["Linux and open source are the future of gaming."](https://arstechnica.com/gaming/2013/09/gabe-newell-linux-is-the-future-of-gaming-new-hardware-coming-soon/) The idea of running Windows games on Linux is not a new idea to Valve. They have been working on their compatibility layer called [Proton](https://github.com/ValveSoftware/Proton) for a long time. Proton is a fork of [Wine](https://www.winehq.org/), which is a tool to run Windows executables on Linux. Valve first used Steam OS on their [Steam Machines](https://en.wikipedia.org/wiki/Steam_Machine_(computer)) in 2015. Basically Steam Machines were just to bring a console like experience to a personal computer. This led to the [Steam Controllers](https://store.steampowered.com/app/353370/Steam_Controller/) and [Steam Big Picture](https://store.steampowered.com/bigpicture).

### Steam Machines Failed
![Steam Machine](/images/posts/steam-deck-is-huge-for-gamedevs/steam-machine.webp)

At the time, Steam OS was a very cool concept, but lacked in terms of hardware and game support. Which led to the [Steam Machines being discontinued in 2018](https://steamcommunity.com/app/221410/discussions/0/1696043806550421224/). Valve stated that they still have a vision for Steam OS and will continue to improve it, even after discontinuing the Steam Machines.

### Steam Deck Announcement 
Towards the end of 2021 the [Steam Deck was announced](https://www.youtube.com/watch?v=AlWgZhMtlWo). The Steam Deck was made possible by the software that Valve has continued to improve over the course of about 9 years. It was also only possible by the contributions and the dedication of the free and open source community. The Steam Deck introduced a new way to play PC games. Often it's compared to the Nintendo Switch in terms of form factor, but the two systems are dramatically different and created for very different audiences.

## Other handheld PCs
The idea of a handheld computer has been around for a very long time. But the hardware never caught up to the current generation. Until now. If you have been paying any attention to the handheld computer space in the past 2 years, you would know that the market is beginning to become mainstream.

I owned a [GPD Win 2](https://www.gpd.hk/gdpwin2) before my Steam Deck. It doesn't really have a lot of processing power, but basically every 2D indie game would run perfectly on it. It was interesting to tinker with it, often you could boost performance and battery life by playing with the TDP and under volting the machine. This opens up the possibilities of playing a few AAA pc games.

This year alone, two handhelds are gonna be competing with the Steam Deck at it's price point.  

[Aya Neo Air](https://liliputing.com/2022/05/aya-neo-air-with-an-oled-display-is-a-thinner-lighter-handheld-gaming-pc.html) starts at $549 | [Ayn Loki](https://www.theverge.com/2022/5/28/23145658/ayn-loki-handheld-runs-windows-starts-299) starts at $299
--|--
![Aya Neo Air](/images/posts/steam-deck-is-huge-for-gamedevs/aya-neo-air-handheld.webp) | ![Ayn Loki](/images/posts/steam-deck-is-huge-for-gamedevs/ayn-loki-handheld.webp)

There's definitely an expanding market here. One that I believe game developers should design games with this usecase in mind.

## Indie games benefit most from handheld systems 
Whenever you have portable hardware, the games that are played the most are usually casual. I mean some people play Call of Duty Mobile on their phones, but most people play simple and addictive time killer games. 

Take the Nintendo Switch as an example. Basically all of the Nintendo Switch library is backed by indie games. Aside from the Nintendo AAA games, people mostly play indie games on the system. Nintendo knows this, they have been promoting indies for a while now using [indie world](https://twitter.com/indieworldna).

In my experience playing on the Steam Deck, I would often lean towards the more casual indie games. 

- They are much easier to jump straight into, especially if I just have a few minutes to spare.
- They use up very little battery. Some games can go up to 7 hours before the unit dies.

Most of the time, I just found them more enjoyable. Now that's obviously just my opinion. Plenty of people are enjoying modern AAA games on their Steam Decks right now. But by the stats of the previous systems in a similar form factor, I can confidently say that the Steam Deck is gonna sell more indie game developers games that support the platform.

## Great on Deck
Since the Steam Deck is running Steam OS and is Linux based. Not all games work flawlessly on it. Proton does an amazing job getting most games running on the system. But there are a few that will continue to have issues until devs support it.

[Great on Deck](https://store.steampowered.com/greatondeck) was created to help customers make sure they are buying games that run well on the system. As an indie game dev, the goal should be to get your game supported. Games that are supported overall get a lot more game sales compared to games that aren't supported on Steam Deck. I would start by integrating the [SteamWorks api](https://partner.steamgames.com/doc/sdk/api) into your game. Adding achievements, cloud saves, and steam input can go a long way for your game.

## Conclusion
Just some of my quick thoughts on the current handheld gaming market and how indie game developers can benefit from it. I would totally recommend if you are a current game developer to look into the Steam Deck and other gaming handhelds. It's an interesting market right now, and it's just starting to become more mainstream. 
