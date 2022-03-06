---
title: 'Smaller GTK headerbars on non-CSD windows'
date: 2021-08-03T07:03:00.008-07:00
draft: false
url: /2021/08/smaller-gtk-headerbars-on-non-csd.html
tags: 
- css
- mutter
- marco
- linux
- gtk
- gala
- titlebar
- csd
- metacity
---

This is how to make the titlebars on non-CSD windows in Metacity, Marco, Mutter and Gala smaller using gtk.css

This is mostly for themes like Ambiance that were not designed for these window managers.

Put this in `~/.config/gtk-3.0/gtk.css`. This makes the headerbars on non-CSD windows smaller to make them look better.

```
/*  
 Decrease the size of head bars for non-CSD applications  
 Gnome 20 (Fedora 24) compatible version  
 https://unix.stackexchange.com/questions/276951/how-to-change-the-titlebar-height-in-standard-gtk-apps-and-those-with-headerbars  
*/  
  
/* x11 and xwayland windows */  
window.ssd headerbar.titlebar {  
    padding: 4px;   
    padding-right: 5px;  
    min-height: 0;  
    /* remove border between titlebar and window */  
    border: none;  
}  
  
window.ssd headerbar.titlebar button.titlebutton {  
    padding: 2px;  
    min-height: 0;  
    min-width: 0;  
}  
  
  
/* native wayland ssd windows */  
.default-decoration {  
    padding: 4px;  
    padding-right: 5px;  
    min-height: 0;  
    /* remove border between titlebar and window */  
    border: none;  
}  
  
.default-decoration .titlebutton {  
    padding: 2px;  
    min-height: 0;  
    min-width: 0;  
}
```