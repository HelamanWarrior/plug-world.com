---
title: "Setting Up a Bluray Plex Server"
date: 2022-04-27T16:49:45-06:00
url: /posts/setting-up-a-bluray-plex-server
---

Update: This isn't really a guide. 
I kinda just wrote this for myself.

Here's a quick rundown that this post covers...

- [HandBrake encoding settings](#the-rippining)
- [Fixing MakeMKV on Linux](#makemkv-on-linux-small-guide)
- [Fixing new releases not ripping](#issues-ripping-new-movies)
- [Ripping 4k movies](#libredrive)

*If you are looking for a step by step guide, please look elsewhere.*
This was just me throwing down my thoughts.

---

## The Plexining
Ever since we got our NAS we had Plex on it. But we didn't have much on it. [Plex](https://www.plex.tv/) is just a media server that hosts all your files and media in one easy to access streamable way. Anyways, I figured it's about time to start utilizing this NAS a lot more. I needed to migrate our entire library of movies from Vudu, Amazon, and Google Play Movies to the NAS. Since I don't wanna be a pirate I'm gonna do things the hard way.

I also use Jellyfin on my media server as a backup if my NAS can't reach Plex's servers. Which is kinda dumb to selfhost Plex and than still be dependent on their own servers to be online. But whatever, still own my own media so if Plex doesn't work I can easily move to the next platform.

I decided to mainly use Plex because...
- My dad already owned Plex Pass. (Basically allows for transcoding and DVR functionality)
- The app works natively on our smart tv. But it's extremely slow and terrible, but better than nothing.
- It supports automatically deleting commericials on live tv.
- HDR to SDR tonemapping support actually works. (Jellyfin doesn't natively support it but you can use an external media player that does)

## The Rippining
We owned like 3 movies on BluRay, and already had a drive that I can rip from. So it was time to get to work. The process suprisingly wasn't too difficult. MakeMKV does most of the heavylifting for you. All MakeMKV does is bypass the DRM on the disc and decrypt it leading you with an h.264 video that gets containerized into a mkv file. Most of the movies on BluRays range from 20gb to 100gb. If that's too much for you, you can always compress them down in smaller sizes using handbrake.

My recommended [HandBrake](https://handbrake.fr/) settings for compressing BluRays...
- Format: Matroska
- Encoder: H.265 10 bit
- FrameRate: Same as Video
- FrameRate: Constant
- Quality: 20
- Audio make sure to include 5.7 surround sound or 7.1 based on your setup.
- You can also compress the audio down to 640kbps if you so choose.

The reason I use h265 is for the high amount of detail that remains once you compress. But it has a few major drawbacks.

These drawbacks include...
- A lot of resources to compress video footage.
- The codec has tons of licensing issues, so playback may not be native on your device.
- Due to the licensing issues not all devices support h265

If you are reading this article in the future, you may want to consider compressing videos in AV1. I hear that's gonna be the next big thing. AV1 at its core is essentially just like h265 whereas it perserves a lot of details at a highly compressed size. But the codec is open source and doesn't have any licensing issues. It's also quite a bit more efficent than h265, so you will be expirencing better quality at the same file size. The only issue is at the time of writing this article, nobody really supports it much. So as that changes it may be a good thing to look into if you are concerned about storage space.

## MakeMKV on Linux: Small Guide
I installed MakeMKV on Arch Linux, so this won't apply to Debian users (sorry).

If you are on debian you can look [here](https://forum.makemkv.com/forum/viewtopic.php?f=3&t=224). I had issues doing the official downloads and compilation on my end. But I'm sure that was my fault in the first place.

But I was able to get my own build of MakeMKV on the [AUR (Arch User Repository)](https://aur.archlinux.org/packages/makemkv/) and that seemed to be working just fine for me. Also auto updates are way cool. You also want to make sure you get the [aacs libraries](https://aur.archlinux.org/packages/makemkv-libaacs/) for Linux.

Optical drives on Arch Linux is kind of a pain to get working. If you get the error that MakeMKV can't find any Optical Drives in Arch Linux, it's not MakeMKV's fault. I found the solution to this problem in this [Reddit post](https://www.reddit.com/r/makemkv/comments/r3jijh/arch_linux_this_program_cant_find_any_usable/). According to the post the solution is to: "Create a file on /etc/modules-load.d/ with the content sg then reboot. Mine is named sg.conf but the name is totally arbitrary."

And that should be everything, that's everything I needed to do to get this to work.

## Issues Ripping New Movies?
MakeMKV is able to decrypt movies by using of Volume Unique Keys (VUKS) from a database. If you have a recent movie that won't rip, then on MakeMKV go download the latest keys from [FindVUK Online Database.](http://fvonline-db.bplaced.net/) Then place the keydb.cfg file in the folder that MakeMKV is installed in. It should automatically recognize it and use the local database in combination with their own online database. If you are still having issues, there are tools to manually get the VUK key but it will require [DVDfab](https://www.dvdfab.cn/) and another tool called [FindVUK](https://forum.doom9.org/showthread.php?t=172472) to extract the VUK from memory on DVDfab.

## Drives Matter
The Blu-Ray drive you use for ripping can make all of the difference. When ripping movies you need to get a perfect copy off of the drive, if there's any piece of data or information that can't be read on the drive it will be unable to rip. Certain Blu-Ray drives are much more affective when reading scratched disks. With my old Blu-Ray player I would have what seems to be a perfect copy of the movie, no scratches noticable, and yet it would run into read errors. They can also have faster read speeds which will speed up the process of ripping each disk.

## Libredrive
Libedrive is very cool because, many blu-ray players "don't support 4k (UHD)." Yet they are fully capable of playing them back. There's just this little police in the firmware that tells it to not play back the 4k disk. With Libredrive we are effectively overwriting the firmware on the disk to force it to play back any sort of disk in the system.

If you are planning on getting a Blu-Ray player I definitely recommend getting one that Libredrive supports. It only supports very specific drives, but you can find what drive to get on the [MakeMKV forums](https://forum.makemkv.com/forum/viewtopic.php?t=19634)

## Conclusion
Owning my media is important to me. Unfortunately with movies you can't really own your movies "legally." The simple act of breaking the encryption on the disk is illegal. Yet creating personal backups of media is totally legal. So kind of in the gray area, but since I am buying copies of physical media from the official retailers I feel like it's ethical to do this. If you typically stream your media and don't watch very many Blu-Rays you are gonna see a huge jump in quality. The bitrate makes all of the difference, resolutions are overrated, you can be watching a highly compressed 4k stream on Netflix and a 1080p Blu-Ray will almost always look better than that compressed stream. To a typical person this isn't easy and they would opt for just watching all their movies on streaming services. And I can agree, it's not user friendly and your going to have to maintain your own server. But I enjoy it, so that's how I'm gonna watch my media.
