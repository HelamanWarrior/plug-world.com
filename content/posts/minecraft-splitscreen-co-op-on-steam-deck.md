---
title: "Minecraft Splitscreen Co-op on Steam Deck"
date: 2023-01-08T18:13:19-07:00
---

![splitscreen-screenshot](/images/posts/minecraft-splitscreen-steam-deck/minecraft-split-screen-steam-deck.webp)

This is the PS3 version of Minecraft running on the Steam Deck.
Currently I get around 40-60 fps while playing with 2 players without any tweaks.

Why emulate?
Because the native Linux version of Minecraft doesn't support splitscreen co-op.
I opted for the PS3 version because the Nintendo Switch version kept crashing.

## Setup Guide

Install [EmuDeck](https://www.emudeck.com), if you haven't already.
This will setup all the emulators and their configurations automatically.

In order to emulate the PS3 we will be using [RPCS3](https://rpcs3.net).
Put your Minecraft Playstation 3 ROM in ``~/Emulation/roms/ps3``

![game-rom-location](/images/posts/minecraft-splitscreen-steam-deck/game-rom-location.webp)

If your rom is a directory with multiple files, then place the directory in the ps3 folder and add ``.ps3dir`` to the folder name. 

Once you added your rom, launch the ``RPCS3`` emulator.
Then in the emulator, in the top left corner press the open button with the folder icon.
Navigate to your game directory ``~/Emulation/roms/ps3``
Select your minecraft folder and then press ok. 

You should see Minecraft in the emulator. 
Launch the game.
You may see a popup asking to locate the ``PS3UPDAT.PUP`` file.
Search for this PS3 firmware file on the internet and download it.
Then select that firmware in the emulator and install it.

Now you should be able to launch and load the game.
You'll notice your controllers aren't working, this is normal, because the Steam Deck is in ``desktop mode``, steam input doesn't work the same.

The solution is to launch the game in ``game mode``.

### Adding Minecraft to Steam

We need to add a shortcut to the game on Steam that way you can launch it in game mode.
Luckly, with Emudeck installed you can use [Steam ROM Manager](https://steamgriddb.github.io/steam-rom-manager/) to automatically grab the metadata and add the game to Steam.

1. Click on the Emudeck launcher on the desktop.
2. Once EmuDeck launches, click on "Tools & stuff" in the bottom right.
3. Then select "SteamRomManager."
4. Click Yes, when it asks to exit steam and launch.
5. Click Preview in the top left.
6. Press "Generate app list" in the bottom left. 
7. Press "Save app list"

After it's saved you can close Steam ROM Manager and Emudeck.
You can then Return to Gaming Mode.
Then you can find the game under Non-Steam games.

![minecraft-on-home-screen](/images/posts/minecraft-splitscreen-steam-deck/game-on-homescreen.jpg)

And boom, you can launch the game and play split-screen co-op with multiple controllers.
It will ask if you want to use a profile when a player joins, just hit B and they will join as guests.
Don't worry even as a guest your save data persists.

### Minor Tweaks and Fixes

To fix the audio lag and stuttering, in RPCS3 goto **configuration -> Audio and enable Time Stretching**.
