---
title: 'Applications starting slow due to broken XDG-portal in wayland sessions'
date: 2023-05-18T09:32:00.003-07:00
draft: false
tags: 
- linux
- xdg
- flatpak
- wayland
---

My applications were all taking ~30s to launch because of a timeout, which was probably due to a broken xdg-portal. To fix it:

Add to `/usr/share/xdg-desktop-portal/portals/gtk.portal`:

```unit
UseIn=gnome;i3;sway
```

Add this monstrosity to your config:

```i3
exec "systemctl --user import-environment DBUS_SESSION_BUS_ADDRESS XAUTHORITY {,WAYLAND_}DISPLAY SWAYSOCK XDG_CURRENT_DESKTOP && exec hash dbus-update-activation-environment 2>/dev/null && dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY SWAYSOCK WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway DBUS_SESSION_BUS_ADDRESS XAUTHORITY; systemctl --user start sway-session.target"
```