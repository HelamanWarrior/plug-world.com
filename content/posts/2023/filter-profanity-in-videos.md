---
title: "Filter Profanity in Videos"
date: 2023-03-10T11:09:18-07:00
url: /posts/filter-profanity-in-videos
---

By using a shell script from my github repository [swears-begone](https://github.com/HelamanWarrior/swears-begone) you can filter swearing from your videos.

After installing the dependencies and downloading the script, you can run the script.

```
usage: ./clean-video <input video>
```

This script utilizes a modified version of OpenAI whispered that can generate timestamps between each word.
It outputs a subtitle `srt` file which is sent to [cleanvid](https://github.com/mmguero/cleanvid) that handles muting the profanity.
By utilizing the timestamps created by [whisper-timestamped](https://github.com/linto-ai/whisper-timestamped) cleanvid can find the exact location cursing is present and mute the word.
