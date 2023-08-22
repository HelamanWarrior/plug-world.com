---
title: "Last.fm Recommendations Made Easy with MPV"
date: 2023-07-17T14:27:00-06:00
url: /posts/lastfm-recommended-script/
---

```bash
#!/bin/bash

user=plug_world

curl -s https://www.last.fm/player/station/user/$user/recommended \
| cat \
| jq -r '.playlist[].playlinks[].url' \
| shuf \
| mpv --playlist=- --no-video
```

This script allows you to listen to a user's Last FM recommendations via mpv.

Just set the `user` variable to your username.
Use `<` and `>` to go backward/forward in the playlist.
Enjoy your music 🎵
