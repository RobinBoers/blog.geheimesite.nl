---
title: 'Enable tray indicators in Pantheon'
date: 2021-08-03T07:26:00.004-07:00
draft: false
url: /2021/08/enable-tray-indicators-in-pantheon.html
tags: 
- eOS
- wingpanel
- ayatana
- trayicons
- linux
- tray
- pantheon
- elementaryOS
---

Some apps use the old system tray. To view them in the elementaryOS tray edit `/etc/xdg/autostart/indicator-application.desktop` and change this line:

```
OnlyShowIn=Unity;GNOME;
```to```
OnlyShowIn=Unity;GNOME;Pantheon;
```

Now install the old panel indicator from launchpad.net:  
[http://ppa.launchpad.net/elementary-os/stable/ubuntu/pool/main/w/wingpanel-indicator-ayatana](http://ppa.launchpad.net/elementary-os/stable/ubuntu/pool/main/w/wingpanel-indicator-ayatana)

After relog you should be able to see the icons in wingpanel.