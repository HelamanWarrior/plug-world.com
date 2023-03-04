---
title: "Arch Linux Just Works"
date: 2022-06-20T09:19:12-06:00
tags: ['tutorial', 'youtube', 'linux']
youtube: ZGcrjX-xlfk
---

Please note this guide is outdated, I no longer recommend Arch Linux.

Arch Linux works great on my main desktop, but with it on everything else I'm unhappy with it.
This is because I use my main desktop enough that I can keep my computer up to date and maintained.

---

## Intro
Arch is often not recommended to new Linux users.
This is caused by the fact that you have to run a lot of commands to install and configure your system.
The terminal is scary. 
The terminal is made for hackers.
That pushes new users away from it.

Despite all of that, I would recommend Arch Linux to beginners.

Arch has just recently made a [guided installer](https://linuxreviews.org/The_Latest_Arch_Linux_ISO_Has_A_Fresh_New_Guided_Installer).
The installer makes this process extremely easy and less tedious.

First and foremost, connect your device to the internet.

Then you may need to initalize your pacman keys.
```bash
pacman-key --init
```

Afterward, you can run through the guided installer.
```bash
python -m archinstall guided
```

Recently I tried to install Fedora on my laptop.
I heard a lot of good things about it.
Packages are up to date and stable.
But it sucked.
The package manager was sooo slow.
Updates took forever.
I had constant issues with the wifi on my laptop.
It led to me manually having to request ip addresses from my router using ``sudo dhclient -v``
One problem would lead to the next.
Constant issues and configuration.
Then I gave up.
I wasted a whole week.
I spent many hours trying to get things to "just work."

## My Mistakes
I didn't use the normal [Fedora workstation](https://getfedora.org/) install.
Instead, I used [Fedora Everything](https://alt.fedoraproject.org/en/).

I tried the Fedora workstation install initially.
But I hated it.
I didn't like [Gnome](https://www.gnome.org/).
The system ran slow, and wasn't as snappy as I was hoping.
It had over 2000 packages installed by default.
In comparison my Arch install on my desktop has 1805 packages.
I have many packages I don't use, tons of apps installed, and steam games.
And yet it is less bloated than a vanilla Fedora install.

This led to me using Fedora Everything.
It's just the essentials.
It boots to the terminal just like Arch.
Nothing additional installed.
[I created a script](https://github.com/HelamanWarrior/Fedora-Installer) to automatically install everything I needed.
It had my window manager ([BSPWM](https://github.com/baskerville/bspwm)), terminal ([st](https://st.suckless.org/)), [polybar](https://polybar.github.io/), [dot files](https://github.com/HelamanWarrior/dotfiles) and all of that fun stuff.

According to my virtual machine the script worked great.
It should be great to install quickly on multiple machines.
Nope, it wasn't.
It sucked.
Constant issues with Fedora working with my laptop hardware.
It was an endless rabbithole of maintainance and fixing things.
I had an [Nvidia Optimus](https://wiki.archlinux.org/title/NVIDIA_Optimus) based laptop. 
That was the biggest problem for my custom Fedora install.
It led to many workarounds and dumb hacks.
This sucked, because I wanted to run this install on many laptops.
These workarounds wouldn't work on other devices with different hardware.
This would lead to me constantly maintaining all of the devices using Fedora Everything.
I then stopped using Fedora.

## The Switch to Arch
Initially I didn't want to use Arch on the laptop.
Mostly because most people on the internet says "it's unstable."
If I'm doing a laptop install, it needs to "just work."
I'm not gonna have the time to mess around trying to get things working.

But I thought about it more.
I reconsidered.
I have ran my Arch install for almost a year on my desktop.
Guess what?
No problems!
I probably had one or two things that broke.
But at the end of the day it was my fault that they broke in the first place.

## The Archening begins
Installing Arch was very straightforward.
I downloaded the latest [Arch ISO](https://archlinux.org/download/).
And I had it livebooted in no time.
Running the Arch guided installer was very straightforward and I had all the customization I needed.
It allowed you to install most desktop environments and some window managers.
As well as installing your own packages if you so choose.
It even gave me the option to install my Nvidia drivers.

Instead of going my typical window manager route, I went with [KDE Plasma](https://kde.org/plasma-desktop/).
I'm so glad I did.
Everything seems to work right out of the box.
Which is exactly what I needed.
When it booted into Plasma there was very few apps installed.
Last time I installed Plasma I had a ton of KDE apps I didn't use.
It bloated up the system, and trying to delete them was a pain in the butt.
I'm really glad to see that it's very minimal and I still have a lot of room to customize my install.
It also seems to use up way less resources than Gnome.
Plasma was super snappy and I'm really impressed how well it ran.
Can we talk about the number of packages.
I know packages aren't everything, but holy cow!
When I was done with installing all of my apps and Plasma I had 700 packages!
By comparison, my Fedora Everything install had that many before I even started installing stuff.

My fresh Plasma install had almost no problems. 
As always you get display issues on Nvidia Optimus laptops.
But it was an extremely simple fix.
[You can fix it](https://wiki.archlinux.org/title/NVIDIA_Optimus#No_screens_found_on_a_laptop/NVIDIA_Optimus) with changing your display manager configuration or your xorg conf.
You are also gonna have to switch from Wayland to Xorg in order for this to work.
You gotta love Nvidia, making things harder for everyone.
But after that fix, everything has been great!
I've been running it for over a week now.
No problems!

## Arch is for Beginners
In my opinion I believe Arch is one of the best distros for beginners.
Now let me clear this up.
By beginners I mean anyone with some good computer experience that's new to Linux.
The average Joe is always gonna have a harder time on Linux.
Especially if they are running into problems just using Windows.

You could say the terminal pushes away the beginners, your gonna have to touch the terminal in the installation.
But if you're gonna use Linux you're eventually gonna have to use the terminal.
The guided Arch installer opens the door to more people.
If you haven't used Arch yet, I recommend you try it in a Virtual Machine and see how you like it.
Just go through the guided installer and see what you like.

Fedora could have been just fine.
My main issue came from not using the official workstation release.
Fedora workstation really wasn't my thing.
Finding packages is quite a bit of work with Fedora.
It's a smaller distro so many guides simply wouldn't tell you what the Fedora equivalent packages are.
This leads to it taking more time hunting down packages.

With Arch, even if the application I want isn't in the repo, I can just go to the [AUR (Arch User Repository)](https://aur.archlinux.org/).
Almost any app that runs on linux will probably be in there.
Rarely are you ever gonna have to install dependencies or compile things yourself. 
Which is even easier for beginners.
