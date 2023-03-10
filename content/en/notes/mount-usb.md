---
title: "Mount USB-sticks using `udiskctl`"
date: 2023-03-10T19:52:48+01:00
draft: false
tags: 
- linux
---

You can mount USB-sticks using `udisks2`:

```shell
udisksctl mount -b /dev/sdX
cd /run/media/robin/<USB STICK NAME>/
```

Additionally, install `dosfstools` to support NTFS.
