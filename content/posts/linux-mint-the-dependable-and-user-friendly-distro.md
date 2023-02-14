---
title: "Linux Distros that are Actually for Beginners"
date: 2022-12-28T16:15:32-07:00
---

If you want a just works distro it's going to be based on **Ubuntu**.
Ubuntu has superior driver, application, and online support.
Ubuntu is the best supported distribution and will lead to the least amount of technical issues.

## 1. [Linux Mint](https://linuxmint.com/) or [Pop_!OS](https://pop.system76.com/)
### 2. [*Kubuntu*](https://kubuntu.org/) or [*Ubuntu*](https://ubuntu.com/) or [*Xubuntu*](https://xubuntu.org/)

I recommend these distros for beginners.

All distros except for *Linux Mint* require **additional configuration.**

On those distros run the script [snap-to-flatpak](https://github.com/MasterGeekMX/snap-to-flatpak).


## My Journey to Linux Mint

[I used to recommend Arch](/posts/arch-linux-just-works), because I was extremely happy with the base install.
But after daily driving it on my laptops I've grown very unhappy with it.
I have daily driven Arch on my desktop and it has worked great.
But it heavily depends on your usage. 

- Arch keys break if you don't update packages for a while.
- Older Nvidia GPUs are unsupported and require switching the kernel.
- Arch inherently takes much more time to setup and configure.

I gotta say I do love my Arch desktop with my window manager and all my desktop configuration.
But all of this requires so much time and energy.

I simply want things to just work on my laptop.
Usually when I'm working off of a laptop I need to get something done, and I don't have time to mess around trying to get my drivers and desktop configured and working.

I didn't consider [Ubuntu](https://ubuntu.com/) as a viable option for a long time.
This is because of the whole [Snap package system](https://snapcraft.io/) that was forced on Ubuntu distributions.
Snaps are so much slower than native packages and are completely proprietary.
Whenever you go to install a package, if a Snap version is available it will force you to download it.
Ubuntu is essentially shooting themselves in the foot forcing their cloud packaging system on everyone.

This is why I avoided Ubuntu like the plague.
But I realized almost every distro is based on Ubuntu.
I had two options, [Arch](https://archlinux.org/) or [Debian](https://www.debian.org/).
Yes, there are more options, but I'm trying to keep it simple.

I didn't experiment with Debian too much, but I believe I could've made it work. 

After I realized the power of [Flatpak package system](https://flatpak.org/) and how Ubuntu is better at power management than Debian, I decided to give Ubuntu another chance.
Flatpaks are an open source universal packaging system.
They are very fast and are up to date.

## What Makes Linux Mint Great

### Packages

Snaps are disabled by default, and Flatpaks are enabled.

[Linux Mint](https://linuxmint.com/) is based on LTS releases of Ubuntu which makes it very stable.
It also means that you'll get five years of support out of your system.
The only downside is that your packages tend to be out of date.
You won't have new versions of your applications and they can be pretty far behind.

To fix this, we have Flatpaks!
Install your application as a Flatpak and you will have the recent version.
Gone are the days of having outdated apps.
Flatpaks run isolated from the system, so you can continue to have a stable experience even with updated untested applications.

### Apps

Everything has an app.
Driver manager, software sources, firewall, software manager, printer manager, software updater, snapshot backups, etc.
I get it. 
Most desktop environments already have GUI apps for a lot of the same things.
But Linux Mint goes above and beyond.
Basically everything that a normal user would want to do can be performed through these apps.
No need for a terminal.

I personally love the terminal.
It gives me so much freedom, power, and automation that you don't get with these GUI tools.
But sometimes, I honestly can care less.
Sometimes I need things to just work. 
I don't want to have to look up a ton of commands to configure install drivers and get my printers to work.
I would much rather use a GUI app that does that for me.
Work needs to get done, I don't have an hour to spare debugging commands in my terminal.

This is why apps are great, not just for the beginners, but even for people that know their way around the terminal.

### Defaults

Defaults matter.
Most people won't change their settings or configure their system.
I certainly don't, but most of the time I'm not happy with the defaults.
So I inevitably waste time configuring the same settings on every system.
