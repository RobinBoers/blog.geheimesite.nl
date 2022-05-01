---
title: 'Alternative to Gala taskswitcher using Rofi'
date: 2021-08-06T10:26:00.003-07:00
draft: false
url: /2021/08/alternative-to-gala-taskswitcher-using.html
tags: 
- linux
- pantheon
- elementary
---

I kinda hate the default Alt+Tab switcher in Pantheon, so I use Rofi to fix that. This is how to use rofi as Alt+Tab switcher. Make sure you have rofi version 1.6.1 installed for this to work propperly.

Create a new scriptfile called `alttab.sh` with this content:

```bash
#!/usr/bin/env bash  
xdotool mousemove 960 540 && rofi -no-config -theme alttab -kb-cancel "Alt+Escape,Escape" -kb-accept-entry '!Alt-Tab,!Alt+Down,!Alt+ISO_Left_Tab,!Alt+Up,Return,!Alt+Alt_L' -kb-row-down 'Alt-Tab,Alt+Down,Down,ISO_Left_Tab' -kb-row-up 'Alt+ISO_Left_Tab,Alt+Up,Up' -show window -selected-row 1   
exit  
```

Now make it executable:

```bash
sudo chmod +x ./alttab.sh  
```

Delete default Alt+Tab shortcut in Switchboard -> Keyboard -> Shortcuts -> Windows  
Now link to the file you created earlier and assign it to Alt+Tab.

This looks the best using this custom rofi theme I made: [https://github.com/RobinBoers/dotfiles/blob/master/.config/rofi/alttab.rasi](https://github.com/RobinBoers/dotfiles/blob/master/.config/rofi/alttab.rasi)
