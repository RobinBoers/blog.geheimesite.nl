---
title: 'Open in terminal in elementaryOS'
date: 2022-02-28T03:56:00.003-08:00
draft: false
url: /2022/02/open-in-terminal.html
tags: 
- cli
- linux
- elementary
---

This is how to add an "Open terminal here" entry to the eOS file manager.

Create `/usr/share/contractors/openinterminal.contract` with these contents:

```desktop
[Contractor Entry]  
Name=Open terminal here  
Icon=terminal  
Description=Open terminal here  
MimeType=inode;application/x-sh;application/x-executable;  
Exec=io.elementary.terminal -w %U  
Gettext-Domain=io.elementary.terminal  
```

Restart the terminal, and voilla!
