---
title: "Speed up boot on Arch Linux by disabling NetworkManager"
date: 2023-03-10T19:49:38+01:00
draft: false
tags: 
- linux
- boot
---

Run this:

```shell
systemctl disable NetworkManager-wait-online.service
```

This disables the NetworkManager-wait-online service in systemd (duh). This service waits until the internet is up, because other services might depend on that. If there aren't any services depending on an active internet interface, then this can safely be turned off.

And for some reason systemd tries to decrypt my encrypted home partition twice, so I run this as well:

```shell
systemctl mask systemd-cryptsetup@home.service
```

This disables the second time it tries to mount it (because the second time always fails), by letting it point to nothing (just `systemd disable` doesn't work since it's generated on the fly by some generator).
