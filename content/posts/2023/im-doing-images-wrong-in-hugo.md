---
title: "I'm Doing Images Wrong in Hugo"
date: 2023-07-28T21:28:04-06:00
url: /posts/im-doing-images-wrong-in-hugo/
---

Ahhhhh!

I'm so mad at myself.
This site is a mess.
I always knew I was doing something wrong with the images on this site.
I just didn't know the solution.

My current setup for images was to place them in `/static/images/posts/my-post-name/my-image.webp`.
But this sucked.
I had to make sure I optimized each and every image.
I used a script to do this, but it still was very repetitive.
And linking images in my markdown was a pain as well.

At first I used a shortcode for optimizing images.
But that didn't last for long.
Everytime I rebuilt the site it had to optimize the images again.
It made my site builds super slow.
So I quickly abandoned that idea.
But I should've looked back sooner.

# Solution

Thanks to [Eric Murphy's post](https://ericmurphy.xyz/blog/images/) I was guided to a much more elegant solution.

By creating a custom image render layout saved here `/layouts/_default/_markup/render-image.html` and by using [page bundles](https://gohugo.io/content-management/page-bundles/#leaf-bundles).
Optimized images are as simple as writing images in markdown.

They also don't have the issue of optimizing images every build.
This makes your build times blazingly fast as always. 
Having the images in the same directory as the post is also super nice.
This makes writing the images in markdown super intuitive.

# Conclusion

If you find yourself in the same shoes I am in.
I urge you to move to this solution.
It will save you time and frustration when making posts.
Hope this helps!
