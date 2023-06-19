---
title: "Chimera OS GPD Win 2 Display Orientation Issue"
date: 2023-04-11T17:58:06-06:00
---

Solution is to edit the gamescope config, and not the steam-os-compositor-plus config, as the docs on Github are out of date.

``~/.config/environment.d/gamescope-session.conf``

With the following config...

```bash
SCREEN_HEIGHT=720
SCREEN_WIDTH=1280

STEAMCMD="steam -steamos -pipewire-dmabuf -gamepadui"

GAMESCOPECMD="gamescope -e --xwayland-count 2 -O *,eDP-1 -f --force-orientation right"
```
