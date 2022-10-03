---
title: 'Assign Rofi to super key in Pantheon'
date: 2021-08-03T07:29:00.001-07:00
draft: false
url: /2021/08/assign-rofi-to-super-key-in-pantheon.html
tags: 
- linux
- pantheon
- elementary
---

I'm used to use the super key to search, because I used Windows for a long time, so I like to assign Rofi to the super key.

```bash
gsettings set org.gnome.mutter overlay-key "'Super_L'"  
gsettings set org.pantheon.desktop.gala.behavior overlay-action "rofi -show drun"  
```

You can use any launcher. In this example I'm using Albert:

```bash
gsettings set org.gnome.mutter overlay-key "'Super_L'"  
gsettings set org.pantheon.desktop.gala.behavior overlay-action "albert"  
```
