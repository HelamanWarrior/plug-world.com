---
title: "You Cannot Legally Own Movies"
date: 2022-08-30T11:23:31-06:00
draft: true
---
Let's say that you bought your brand spanking new Blu-ray...
you own the data on that disk.
This lead most people to believe that they own the movie.

## Digital Rights Management (DRM)
This isn't the truth.
All of these dics are encrypted using [Advanced Access Content System (AACS)](https://en.wikipedia.org/wiki/Advanced_Access_Content_System).
All you own is the encrypted data.
The only way to playback the original movie is through a Blu-ray player.
A Blu-ray player that has to retrieve the decryption keys from a server.
A server that you do not own.
A server that can take down those keys if they so choose.
Once those keys are gone, you can't play the movie anymore.
So who's in control?
Not us, the movie companies are in control.
And they want to keep it that way.

A solution to this could be to never connect your Blu-ray player to the internet.
Then it would only use the keys that it has previously retrieved.
But let's say that you get a new movie, put it into the player, and it won't play.
So you would inevitably have to connect it back to the internet to retrieve the latest keys.
Which probably wouldn't be a problem for most people.

Let's say that a movie company decided for whatever reason to stop selling the movie.
That's okay you still own the Blu-ray, so you can continue watching it.
Now let's say that this movie company also removed the encryption keys from the server.
Now you can't play the movie that you "own" anymore.

As far as I've seen this isn't a problem yet.
But it's something to think about.

## Streaming 
The same thing holds true to streaming, just more amplified.
You've seen it, Netflix taking down shows and movies, [Playstation Store taking down movies that people "own"](https://screenrant.com/playstation-store-tv-movies-discontinue-shut-down-august-2021/), [HBO removing movies and tv shows that exist exclusively on that platform.](https://www.vulture.com/2022/08/hbo-max-movies-removed.html)

So yeah, streaming is one big mess.
The golden age of streaming is gone, and after Disney Plus was established everybody flocked to their own services.

## Movie Downloads 
Lets say you own a lot of movies on [Vudu](https://www.vudu.com/).
Now you could just download all the movies for offline use and play them, then you own the movie, right?
Okay, let's try it.
I downloaded a few movies, and I have them locally stored on the device.
Note that these movies are covered in DRM, and the only way to play them is through Vudu.
So I disconnect the device from all internet, and boom!
I can watch the movie, without any connectivity, I own it!
Now just wait a month.
Try to do the same thing again.
You will discover that Vudu needs you to login again.
So this forces you to connect back to the internet, login, and then play the movie.

At this point you still do not own the movie.
You have to rely on Vudu to give you permission to watch it.
And you get to watch it at an inferior resolution 480p.

## Intel Software Guard Extension (SGX) 

Okay, so here's an example of DRM being [defective by design](https://www.defectivebydesign.org/).
Recently it was announced that Intel Software Guard Extension (SGX) will soon be deprecated.
4k Blu-ray disks require SGX functionality in order to play.
["Processors without the SGX, 4K streams will be downgraded to the lower-quality 1080p, even if the device is perfectly capable of playing it."](https://www.defectivebydesign.org/blog/intel_sgx_proves_bluray_drm_defective_design)
So guess what!?
Plan on having a worse experience because Intel doesn't want to maintain the software to handle the DRM.
Those pirates are sure having a better experience watching a 4k movie that they didn't pay for.
Meanwhile you are getting a 1080p stream of a 4k movie that you have bought and "own."

## Ripping Movies
In order to own the movie you could just rip it yourself.
If you rip a one to one copy of the data from the disk, you still need the decryption keys to watch it properly.
Otherwise the resulting video stream will be glitchy and unwatchable.
You could use a tool like [MakeMKV](https://www.makemkv.com/) to rip the movie, decrypt it, and save it into the mkv format.

The issue is, this isn't exactly legal.
As soon as you break the DRM and decrypt it youself, you are breaking the law.
Even if you only use it for personal use.

## Playing through VLC
In order to play the movie you have to circumvent the DRM in VLC.
Just download the aacs encryption keys from [FindVUK](http://fvonline-db.bplaced.net/).
Then you can just throw those keys into ``~/.config/aacs/KEYDB.cfg`` on Linux.
Then just make sure libbluray, libaacs, and libbdplus are installed and you are off to the races. 

Now just insert your Bluray disk, open it in VLC, and boom you're watching the movie.
It's more of the authentic Bluray experience, with the menus and all that fun stuff; but it's still illegal due to the circumvention of DRM.

## Ethics of Piracy
So the only way to own your media is to pirate it.
Or to circumvent DRM yourself.
In doing this, you will be granted the freedoms of watching your content in whatever way you want.
And you don't have to worry about losing your movies, no company can take your movies away from you now.

In my opinion I believe that I have the right to pirate the media or rip the media as long as I have bought it. 
I shouldn't have to deal with an inferior experience watching it the legal way. 

> “The easiest way to stop piracy is not by putting antipiracy technology to work. It’s by giving those people a service that’s better than what they’re receiving from the pirates.” -Gabe Newell, Valve, 2011
