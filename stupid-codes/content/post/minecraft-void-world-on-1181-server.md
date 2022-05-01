---
title: 'Minecraft Void World on 1.18.1 server'
date: 2022-01-21T07:21:00.003-08:00
draft: false
url: /2022/01/minecraft-void-world-on-1181-server.html
tags: 
- minecraft
---

Edit your `server.properties` and change `generator-settings` to this:

```json
generator-settings={"biome"\:"minecraft\:jungle","lakes"\:false,"features"\:false,"layers"\:[{"block"\:"minecraft\:air","height"\:1}],"structures"\:{"structures"\:{}}}
```

And change `level-type` to `FLAT`
