---
title: 'Missing depedencies when installing rofi from source on Ubuntu'
date: 2021-08-08T10:30:00.006-07:00
draft: false
url: /2021/08/missing-depedencies-when-installing.html
tags: 
- ubuntu
- depedencies
- rofi
- linux
- elementaryOS
---

When installing rofi 1.6.1 from source on Ubuntu, there are some missing dependencies. To install those, enter this command:

```
  
sudo apt install libxcb-xkb-dev libxcb-ewmh-dev libxkbcommon-x11-dev libxcb-icccm4-dev libxcb-xinerama0-dev libxcb-xrm-dev build-essential cmake extra-cmake-modules xcb  

```

The `check` version in the default repos is also outdated, so you need to compile that from source too.