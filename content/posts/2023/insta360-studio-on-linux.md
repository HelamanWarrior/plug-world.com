---
title: "Insta360 Studio on Linux"
date: 2023-02-12T11:29:06-07:00
url: /posts/insta360-studio-on-linux
---

1. Download [Insta360 Studio](https://www.insta360.com/download) :P
2. Run through the Insta360 Studio installer in [Wine](https://www.winehq.org/).
3. Install [Proton GE](https://github.com/GloriousEggroll/proton-ge-custom) you can either do this through [Lutris](https://lutris.net/) or a [manual install](https://github.com/GloriousEggroll/proton-ge-custom#installation).
	- Proton GE is required for the videos to properly load inside the app.
	- In Lutris if you press the package button next to Wine you can select "lutris-GE-Proton" to be installed.
4. In Lutris click the **+** button to add a new game.
5. You can name it "Insta360 Studio" and set the runner to Wine.
6. In Game options, set the executable to ``~/.wine/drive_c/Program Files/Insta360 Studio 20XX/Insta360 Studio 20XX.exe``
	- Replace "XX" with the current year.
7. In Runner options, set "Wine version" to Proton.

Now you can run Insta360 Studio through Lutris and it should work.
If the app freezes at startup, simply kill it and run it again.
