---
title: "Show XYZ: neopub"
date: 2022-05-03T16:27:18+02:00
draft: false
---

This description from the IndieWeb wiki describes best what neopub is[^1]. I built neopub as because I wanted to have a micropub endpoint to be able to like stuff in [monocle](https://monocle.p3k.io), post from [Micro.blog](https://micro.blog) and because I like doing hard things.

> _**neopub** is a blogging software developed by [RobinBoers](https://indieweb.org/User:Geheimesite.nl). It runs [micro.geheimesite.nl](https://micro.geheimesite.nl) and is written in PHP. It has a built-in micropub endpoint and sends webmentions. neopub is inspired by [neofeed](https://github.com/victoriadrake/neofeed-theme), [publog](https://p83.nl) and [aaronparecki.com](https://aaronparecki.com)._

~ <https://indieweb.org/neopub>

If you want to learn more about neopub, check the IndieWeb wiki. This post is about how and why I made it.

I wanted to set up some sort of micropub endpoint since I saw [neofeed](https://neofeed.dev) while building this blog. Recently I came across [p83.nl](https://p83.nl) when trying to export my subscriptions from aperture. It's a website built by Peter Stuifzand. I felt really inspired by the design[^2] and the fact that he built his own blogging software[^3] to run the thing.

So I started working on my own thingie. I decided to use PHP because I can run PHP applications on my webserver without the need for an external server/VPS. I found [this minimal micropub endpoint](https://gist.github.com/adactio/8168e6b78da7b16a4644) by [Jeremy Keith](https://adactio.com) and editted it with a bit of help from the IndieWeb wiki to write posts to a file: `feed.json`.

In neopub, all posts are written to a JSON file in the content directory. Every year a new JSON file is created, so after a few years of use you'll have something like this in the content directory:

- 2022.json
- 2023.json
- 2024.json
- etc.

At most I post once per two days, some weeks once a day. That means that in one year I accumulate around 250-300 posts. I think the server will be able to handle rendering that, so I'm not really woried about performance.

On the pages for tags or post types only posts from the current year are visible. I wanted older posts to be hidden by default. You can of course still access them via their permalink or using for example: <https://micro.geheimesite.nl/posts/2021>[^4].

{{< figure src="https://indieweb.org/images/0/05/neopub-screenshot-1.png" alt="Screenshot of my microblog" caption="Screenshot of the homepage of my microblog running neopub" >}}

That's about it. I'm planning on adding some more features, like:

- Being able to change/delete posts
- A media endpoint for uploading photos

If you want you can find the source code [on GitHub](https://github.com/RobinBoers/neopub)

{{< xyz "/en/indieweb" >}}

[^1]: It's almost like I wrote it :D

[^2]: You can definitely see that in the final design of neopub

[^3]: It's called [publog](https://p83.nl/projects/publog)

[^4]: I just started posting this year, so this page is empty, but you get the point.
