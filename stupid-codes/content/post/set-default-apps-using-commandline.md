---
title: 'Set default apps using the commandline'
date: 2021-08-03T07:17:00.008-07:00
draft: false
url: /2021/08/set-default-apps-using-commandline.html
tags: 
- cli
- linux
---

To look up what the current default is:

```bash
xdg-mime query default inode/directory
```

To set the new default:

```bash
xdg-mime default nemo.desktop inode/directory
```
