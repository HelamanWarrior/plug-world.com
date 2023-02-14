---
title: "Brave Goggles Changes How I Search"
date: 2022-06-25T11:59:47-06:00
tags: ['tutorial', 'youtube']
---
[Watch the video on YouTube](https://youtu.be/HZvrgZK43qg)

So if you didn't know Brave, the company behind the [Brave Browser](https://brave.com/), created a [search engine](https://search.brave.com/) not too long ago.
Brave Search is actually a really interesting project.
Brave advertises itself as a private search engine.
Now I'm not here to talk about privacy.
Just talking about the features of the project.
But it's up to you to trust them.
Their [source code](https://github.com/orgs/brave/repositories) is public, but their servers aren't.

Brave created their own indexer for the results in Brave Search.
This is not the case with other search engines like [DuckDuckGo](https://duckduckgo.com/) and [Qwant](https://www.qwant.com/).
Both of which use Bing results.
This alone ranks Brave Search above other search engines for me.
Just because it's actually different from the others.

So what are [Brave Goggles](https://search.brave.com/help/goggles)?
They are essentially a way of filtering search results.
Or as Brave puts it, "Goggles act as a custom re-ranking on top of the Brave search index."
The internet is full of garbage.
So many websites copying each other, all fighting to be at the top.
Gotta make that ad revenue.
But with this new tool allows you to sift through all the garbage on the internet with ease.

![Following Goggles](/images/posts/brave-goggles-changes-how-i-search/following-goggles.webp)

Now you have full control to manually rank your search results.
No more relying on an algorithm to do it for you.
Brave says it best, "Goggles allows users to counter any intrinsic biases in the algorithm."
You can try out [Brave Goggles here](https://search.brave.com/goggles).
Take a look at the Brave Goggles [source code](https://github.com/brave/goggles-quickstart/).
If you look at ["Tech Blogs"](https://raw.githubusercontent.com/brave/goggles-quickstart/main/goggles/tech_blogs.goggle) as an example, it shows every domain it is boosting and downranking.
Really simple and easy syntax.
All to make it easy for you to tailor your own results.

![Tech blogs Syntax](/images/posts/brave-goggles-changes-how-i-search/goggles-syntax.webp)

You can even find goggles that the community has made through the [discovery page](https://search.brave.com/goggles/discover).
Whenever you make your custom goggles you will have the choice to make it public.

I started following a few goggles.
They have proven to be very helpful when searching for specific results.
For example I would often look for programming solutions and have to filter with site:stackoverflow.com or site:github.com.
Not anymore.
Now I just use the ["Programming solutions"](https://search.brave.com/goggles/discover?goggles_id=https%3A%2F%2Fraw.githubusercontent.com%2FAdventistforever%2Fbrave-programming-goggle%2Fmain%2Fprogramming.goggle) goggle and I get the results I need from Brave Search.
