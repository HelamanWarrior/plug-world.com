---
title: "Improving My Directory Workflow"
date: 2022-10-07T17:58:45-06:00
hackernews: 33128657
---

![rct in action](/images/posts/improving-my-directory-workflow/rct-in-action.gif)

This is my most used custom shell script.

```bash
#!/bin/sh

directory=$(find ~/projects ~/assignments ~/personal -mindepth 0 -maxdepth 1 -type d | fzf)

if [ -z "$1" ]; then
    cd "$directory"
    exec fish
else
    exec ranger "$directory"
fi
```

_Please note this is configured for the fish shell._

If you don't use the fish shell change the exec command to your shell of choice.

## Speed 🏃🏻💨

`rct` was a little script I made to quickly find directories that I use a lot.

Gone are the days of `cd ~; cd important-directory/; ls; cd subdirectory; ls; vim important-document.md`

Now I just run `rct` and use `fzf` to search for the directory I need.

## Keybinds ⌨️ 

`alt+r` launches my terminal with `rct` running and ready to go.

`alt+shift+r` launches `ranger` in the directory that I select with `rct`.

## DWM Setup 🪟
Keybinds are added in `config.h` under the keys variable.

```{ MODKEY, XK_r, spawn, SHCMD("st -e rct") },```

```{ MODKEY|ShiftMask, XK_r, spawn, SHCMD("st -e rct 0") },```
