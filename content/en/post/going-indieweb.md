---
title: "Going IndieWeb"
date: 2022-05-03T13:06:12+02:00
draft: false
---

I recently moved this blog and [its big dutch brother](https://blog.geheimesite.nl) to my own site. I did this because I wanted to be in control of my content (and more importantly, its URL) and because I like to do hard stuff I guess. This blog is now hosted as a git repository [over on GitHub](https://github.com/RobinBoers/blog), which means I can use version control. I can also host it using GitHub pages and deploy it using GitHub actions, which is pretty neat.

This was the first step in [indiewebifying](https://indiewebify.me) my website. I also set up [IndieAuth](https://indieweb.org/IndieAuth), [h-card](https://indieweb.org/h-card), I marked my posts up using [microformats2](https://microformats.io) and I started sending [webmentions](https://webmention.net).

So, what is this [IndieWeb](https://indieweb.org)? Well, technically it is just a collection of APIs, guidelines, and principles to allow websites to interact with each other. It is about owning your online identity and content. Instead of being reliant on [silos](https://indieweb.org/silo) like Facebook, Blogger, Instagram, or Twitter you self-host all of your content and optionally syndicate it to other platforms.

For example, if I wanted to tweet something[^1] I would publish the tweet [on my own site](https://micro.geheimesite.nl) and then syndicate it to Twitter using [Brid.gy](https://brid.gy)[^2]. When people then reply to me on Twitter, those replies would get sent to my website using webmentions, so that I can show those comments on my site.

But it gets even better than just replies from Twitter. I can send webmentions to other IndieWeb sites, where they then show up under their posts, and when other sites send me webmentions I can display them below my posts.

I can now also sign in using my domain name (on websites that support IndieAuth[^3]) instead of creating an account or using "Sign in with Google/Facebook". My profile data, like profile picture, bio and name are saved on my website using an [h-card](https://indiewebify.me/validate-h-card?url=https://geheimesite.nl). It's like Gravatar, but better.

When I publish a post on this blog now, it gets scanned by [webmention.app](https://webmention.app) and webmentions will be sent to all URLs in this post, telling them I mentioned them. When people respond to this post I'll get a webmention and I can then render the reply below my posts.

But it gets even better. I have also moved [my notes](https://micro.geheimesite.nl) from this blog to a separate microblog running [neopub](https://indieweb.org/neopub), a blogging software with a [micropub endpoint](https://indieweb.org/micropub) that I built, and I moved my Inoreader subscriptions to [aperture](https://aperture.p3k.io). I can now comment on articles in my RSS reader and those comments will be published on my site, after which I can then send webmentions to the article. Pretty cool right?

{{< xyz "/en/indieweb" >}}

[^1]: I don't use Twitter, but just imagine I did for a second.

[^2]: I already syndicate posts from my dutch blog to LinkedIn.

[^3]: Which is mostly other IndieWeb sites or services, but in the future hopefully more sites will support it (maybe?)
