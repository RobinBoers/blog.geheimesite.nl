---
title: 'Phoenix Framework doesn''t work on Arch Linux due to node-sass'
date: 2021-08-05T11:05:00.001-07:00
draft: false
url: /2021/08/phoenix-framework-doesnt-work-on-arch.html
tags: 
- npm
- phoenix-framework
- nodejs
- elixir
---

While trying to setup a chat app on Arch Linux using Phoenix Framework I ran into a lot of nodejs related errors. First of all, make sure you're using nodejs 14 or maybe 15. Everything above is absolute hell. I recommend using [`nvm`](https://github.com/nvm-sh/nvm).

I still got a lot of errors using `node-sass`. It prevented me from using websockets by crashing the building process. Turns out you can just replace `node-sass` with `sass` in `package.json`

Just remove this line:

```
"node-sass": "xx.xx.xx"
```

And replace it with:

```
"sass": "^1.22.10"
```

Ta da! All problems fixed. I have no idea why the guys over at Phoenix Framework don't just ship this as the default!

Sources:

*   [https://elixirforum.com/t/phoenix-wont-compile-due-to-node-sass-on-win10](https://elixirforum.com/t/phoenix-wont-compile-due-to-node-sass-on-win10/31842)