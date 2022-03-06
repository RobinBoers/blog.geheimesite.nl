---
title: 'Set default terminal in Nemo outside Cinnamon'
date: 2021-08-03T07:21:00.010-07:00
draft: false
url: /2021/08/set-default-terminal-in-nemo-outside.html
tags: 
- terminal
- linux
- nemo
- cinnamon
- alacritty
- de
- terminalemulator
- gsettings
---

Replace alacritty with your favorite terminal emulator.

```
gsettings set org.gnome.desktop.default-applications.terminal exec alacritty
``````
gsettings set org.cinnamon.desktop.default-applications.terminal exec alacritty
```