---
title: "Hide panels from Gnome settings"
date: 2023-03-10T19:55:32+01:00
draft: false
tags: 
- linux
- gnome
---

The multitasking and color panels in gnome settings require Gnome Shell, and
crash when you use the settings app outside of the shell. You can remove them from
the sidebar so that you don't accidentally click them (making your settings unusable).

```shell
cd /usr/share/applications/
sudo mv gnome-color-panel.desktop gnome-color-panel.desktop.bkp
sudo mv gnome-multitasking-panel.desktop gnome-multitasking-panel.desktop.bkp
```

You can always turn them back on:

```shell
cd /usr/share/applications/
sudo mv gnome-color-panel.desktop.bkp gnome-color-panel.desktop
sudo mv gnome-multitasking-panel.desktop.bkp gnome-multitasking-panel.desktop
```

If you did click them, you can reset the current panel using gsettings:

```shell
gsettings set org.gnome.Settings last-panel wifi
```
