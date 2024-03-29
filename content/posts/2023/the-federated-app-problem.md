---
title: "The Federated App Problem"
date: 2023-06-19T14:20:02-06:00
url: /posts/the-federated-app-problem/
---
Federated applications have a few problems.
And I really wish it weren't the case, I love the idea and philosophy of these applications.
But I can't see them being mass adopted.

# Learning curve

First thing's first, they're not user intuitive.
People are used to the idea of going to one url whether that be YouTube, Twitter, or Reddit to sign up and create content.
But now users need to understand federation.
There isn't just one server, but many different servers that can read content from each other.
This poses a search engine problem that we'll cover soon.

But that doesn't matter right, if people know how to sign up for an account they can surely sign up on any of these instances easily.
Yes, but this leads to problems.
Users will all naturally gravitate to one instance, all their friends are there, so they gotta sign up too.
One server gets overloaded, and the traffic doesn't get distributed across all of the other instances.
I mean that's the whole point of federation right??
To distribute the server load which makes it possible for small communities to host large sites full of users and content.
It also grants more freedom to the users and allows them to view and host content in any way they would like.

But when everyone just goes to one or two servers.
It kinda loses its point.

We've seen this happen before on a mass scale.
Anyone remember email??
Email is federated, I can have an email from one provider and send messages to another provider.
It's great, I can even host my own email list if I want to.
Or view my email in many different application intererfaces.
But Google and Microsoft got in the game.
They give you free emails, in the hopes of forcing users in their ecosystems of services.
Since it's easy and simple and other Google/Microsoft services force you to use their accounts, many people ended up getting and using their emails from them.
This led to a huge marketshare of emails either falling under Google/Microsoft.
Very few individuals use any other providers.
Again, this is where federation falls apart.
It's ultimately about the user's decisions.

And we are seeing the exact same problem with Lemmy, Mastodon, and many other federated services.
Most users all jump onto the same server.
Annnndd, I don't blame them.
I'd rather join a decently sized server, cause I know that smaller servers are more likely to randomly get taken down. 
Larger servers will most likely have a better uptime and trackrecord.
So I can go into it knowing that my server will be up most of the time.
If I join a server with 3 other people, I wouldn't be suprised if it gets taken down.
I believe this is another big factor that leads people to one big centeral instance.
But this wouldn't be a problem if my credentials didn't get locked into a specific instance.

# Authentication

Let me know if I'm incorrect, I haven't used federated services too much, so correct me if I'm wrong. 
But in my experience, I haven't seen any service that shares my account logins to other instances.
This means if I create an account at let's say lemmy.one and that instance goes down, then I can't post until that instance goes back up.
I can certainly view content from other instances and still access everything.
But I can't use my lemmy.one login on another instance and continue to use my account.
This essentially steers me away from smaller instances, as stated previously.
If there wasn't instance lockin with my account, then I would have nothing to lose, and happily use smaller instances.

I'm sure there's probably many security issues associated with this approach.
It probably explain why no federated service has this functionality.
Maybe a potential solution would be to have a centeralized login server, this would fix the security issue.
But it may also introduce other issues, like when the login server's down, nobody can post or access their accounts.
I don't think there's one *correct* solution.
But those are just some of my thoughts.

# Search Engine Optimization

Here's the biggest kicker for me.
Search engine indexing for these federated services SUCKS.
Don't tell me it works because you put site:lemmy.ml in your search query.
No.
Google downranks those websites so much that they will almost never come up in your search results organically.
Why??
Federation.
When multiple instances with different domains hosts the exact same content, Google will give these sites very low SEO ranking.

Imagine you worked very hard on your website, you have awesome blog posts and great content.
Now imagine another site copies and pastes these blog posts from your site onto their's using a bots.
And they do this for thousands of websites on the web.
Without a spam filtering system, this one mega website would become the one stop shop for everything.
Anyways, Google combats this by detecting where the content originated from first.
And then they downrank anyone else that uses the same content after you.

So naturally all federated services are gonna have terrible indexing.

