---
title: 'My vision for an alternative web'
date: 2023-01-15T20:53:22+01:00
hideFromGoogle: true
---

I am not content with the way the web works at the moment. It is an absolute mess with laggy pages, popups, ads, newsletters and tracking everywhere.

Don't get me wrong, the original idea of the web is great. Just a bunch of documents and media that are interlinked via hyperlinks. Everyone can publish with some effort. It's basically a giant Wikipedia.

What I don't like tho: the scripting. It makes the giant information database into an *platform*. It enables interactive experiences. In my vision the web should be about information and connections between information.

Forums, chat and social media are important too (but have to be executed well, otherwise we get the current mess), but their place shouldn't be on the web. We have other standards for that. We don't need webmail for emailing eachother; we can just use SMTP from our mail client. Same goes for chatting: we invented IRC and Matrix for that.

This document outlines my vision for the future of computing and communication via the internet. It is a comphrehensive list of projects to build to fix the modern, commercialized web. This is not a guide to fix the web; this is how I would have built it if I could build it again from scratch now. It is also definitely not fool-proof. Take with a grain of salt.

This post is a living document. That means it will get updated (often) with new ideas and improvements.

## Interlinked documents

I want to start by proposing an alternative standard for the World Wide Web. Like I said, the original idea is great. But the current way it works is broken. This section of the post is about an alternative replacement for the web, which we'll call the grid for now (inspired by an amazing NDC talk by Dylan Beatie).

To fix the web the first step is to take away Javascript. Webapps should not be a thing. There is no reason not to built a native app or use the web standards instead of the Javascript/forms mess we have now. Forexample, it would be way better to have a native client that makes PUT requests if you want to publish something, opposed to the current webpage-with-form method (that is used in almost any CMS).

Webbrowsers are inefficient and insecure compared to native apps[^1]. Besides that native apps also look better and give the OS a coherent look and feel.

We want to make publishing on the grid as easy as possible. (In this context publishing means long-form content[^2].) This means built in PUT support in the server and a good client for PUT. This is also why we don't want HTML. It is hard to understand and requires a WYSIWYG/rich-text editor to be easily usable, which can get messy.

So I want to get rid of HTML. A better alternative? Markdown. Easy to understand and supported on a lot of platforms already, which means many users are already familiar with it to some extent. Using markdown also means a lot of plain-text documents can be published straight away with little edits neccesary. We should adapt the language with new ideas and add syntax for missing elements from HTML (like `<kbd`>).

### HyperText MarkDown language (aka markdown)

An alternative to HTML. Based on CommonMark. We need a simple parser, preferably written in Rust (because fast). Metadata should be added in the front matter.

I will write and publish the spec later and then update this post.

### Surfer (aka browser)

An webbrowser for our own web. It uses HTTP, but we add a new mime type called `text/htmd`. It's composed of a history store, a rendering engine and the UI. The browser will be feature-complete, but both usable for power-users and newbies. I want the browser to have a (opt-in) vi-bindings mode similar to qutebrowser. The browser should have minimal UI. Tabs should be managed by the WM of the user, that's not the browser's job.

### Waiter (aka server)

We need a server to serve our markdown files. We want fancy routing (no file-name extentions for `.htmd` files). We need to check whether the browser accepts `text/htmd` and then send the response with the `text/htmd` mime type. If not, send it as `text/plain` (so that the site will also be accessible in the old browsers). We should support the `PUT` method with authentication, so that publishing can be as easy as possible.

### Shout (aka put-client)

We need a simple to use client to publish to the new web. Enter your domain name, credentials and a filename for your post. Clicking publish will make a PUT request to the server and upload the file.

The PUT request should include credentials in some way so that the server can verify the request.

[^1]: This means we should all **stop using Electron**.
[^2]: For short-form content see the (upcoming) social media section (of this post).
