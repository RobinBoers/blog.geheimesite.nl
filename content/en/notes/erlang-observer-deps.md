---
title: "Erlang `:observer` deps"
date: 2023-03-10T19:53:54+01:00
draft: false
tags: 
- linux
- erlang
---

Elixir is based on Erlang. Erlang has an thingie called `:observer` that spawns a GUI with running process. It's very handy for debugging. But, on Arch it doesn't work by default.

Install these packages and then recompile erlang to enable `:observer` and other UIs.

```shell
pacman -S fop libxslt wxwidgets-gtk3 glu mesa libpng unixodbc libssh ncurses webkit2gtk
```
