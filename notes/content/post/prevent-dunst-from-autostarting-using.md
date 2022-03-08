---
title: 'Prevent dunst from autostarting using DBus'
date: 2021-09-03T12:12:00.002-07:00
draft: false
url: /2021/09/prevent-dunst-from-autostarting-using.html
tags: 
- cli
- linux
- dunst
---

By default, dunst is autostarted by DBus. This can be turned off by editing `/usr/share/dbus-1/services/org.knopwob.dunst.service` and changing

```
Exec=/usr/bin/dunst
```

To:

```
Exec=/usr/bin/true
```

Source:  
[https://lists.archlinux.org/pipermail/arch-general/2015-January/038282.html](https://lists.archlinux.org/pipermail/arch-general/2015-January/038282.html)