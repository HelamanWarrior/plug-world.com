---
title: "Generating Slideshows Easily with Shotcut"
date: 2022-06-15T14:24:37-06:00
tags: ['tutorial', 'youtube']
url: /posts/generating-slideshows-easily-with-shotcut
youtube: jf2OVow17X8
---

## Context
[Shotcut](https://shotcut.org/) is an open source video editor.

From their [forum](https://forum.shotcut.org/t/slideshow-generator/19162) I found out you can create slide shows with it. In the past I tried to create an [ffmpeg](https://ffmpeg.org/) script to do this for me, but I was unsuccessful. This does exactly what I was hoping to achieve with those scripts.

## Tutorial
1. **Import all** of your pictures into the playlist panel on the left hand side.
2. **Select all** of the pictures that you want in the slideshow.

![Shotcut Picture Selection](/images/posts/shotcut-slideshow-generator/highlight-photos-playlist.webp)

3. Open the **playlist menu**

![Playlist menu](/images/posts/shotcut-slideshow-generator/slideshow-playlist.webp)

4. Click **Add selected to Slideshow**
5. Find what settings works best for your needs

![Slideshow properties](/images/posts/shotcut-slideshow-generator/slideshow-properties.webp)

## Fixing the Lag
You may have noticed the editor lagging as you watch the slideshow in the timeline. This seems like a very common issue with these open source video editors, but I have found a few settings that may speed it up for you.

Go to settings then...
1. Disable Scrub Audio
2. Disable Realtime (frame dropping)
3. Set preview scaling to 360p
4. Go to proxy
	- Enable Use Proxy
	- Enable Use Hardware Encoder 
	- Click Configure Hardware Encoder and double check that your using the correct GPU or APU.
5. Change Interpolation to Nearest Neighbor

You probably don't need to go as extreme as I have for the example above. Feel free to play around with each of those settings.

## Conclusion
And boom, you got a slideshow! 

It may not be perfect, but it gets the job done quickly with quite a bit of customization.
