---
title: 'Set default terminal in Nemo'
date: 2021-08-03T07:21:00.010-07:00
draft: false
url: /2021/08/set-default-terminal-in-nemo-outside.html
categories: ["note"]
tags: 
- linux
- cli
---

The default terminal can't be easily changed outside Cinnamon because it's in the Cinnamon settings panel. Here's how to do it:

Replace alacritty with your favorite terminal emulator:

```shell
gsettings set org.gnome.desktop.default-applications.terminal exec alacritty
gsettings set org.cinnamon.desktop.default-applications.terminal exec alacritty
```
