---
title: 'Maak een minimale Linux desktop met Openbox!'
date: 2020-12-21T08:46:00.003-08:00
draft: false
url: /2020/12/maak-een-minimale-linux-desktop-met.html
tags: 
- linux
---

Hoi!  
  
Vandaag ga ik laten zien hoe je een minimale Linux desktop kan opzetten met alleen Openbox, plank en nitrogen. Openbox is een window manager. Die doet precies wat de naam zegt: windows managen.  
  
Dus wat is het voordeel over het gebruiken van een standaard Desktop Environment (zoals GNOME of xfce4)? Je kan alle opties zelf kiezen, en je snapt dus hoe alles werkt. Ook installeer je alleen maar wat je ECHT nodig hebt. Hierdoor is je systeem een stuk sneller dan normaal.

[![](https://1.bp.blogspot.com/-yGuA4fJJ4RA/X-DN7oIJfMI/AAAAAAAAJo8/tZu9fH3SM9EnbRN-Fq5Y3tA5387aG5drQCLcBGAsYHQ/s320/1200px-Tux.svg.png)](https://1.bp.blogspot.com/-yGuA4fJJ4RA/X-DN7oIJfMI/AAAAAAAAJo8/tZu9fH3SM9EnbRN-Fq5Y3tA5387aG5drQCLcBGAsYHQ/s1421/1200px-Tux.svg.png)

Dit zou moeten werken op alle linux distro's die op Debian gebaseerd zijn, Ubuntu en alles wat op Ubuntu gebaseerd is.  
  
Dus, laten we beginnen!  

## Openbox en Xserver / xorg installeren

Wat je als eerste nodig hebt is de xserver, en natuurlijk openbox zelf. Dit doe je met het volgende command:  
  
sudo apt install xorg openbox obconf obmenu  
  
Het obconf package is nodig om Openbox instellingen te vertellen. Obmenu is om het standaard openbox menu aan te passen.  
  
Je kan als je dat wil ook een login manager, ookwel display manager installeren. Die heb je nodig als je een grafisch inlogscherm wil hebben. Je hebt verchillende opties. Die zie je hier: <https://wiki.archlinux.org/index.php/display\_manager>. De voordelen van een login manager zijn bijvoorbeeld het gebruiken van meerdere DE's, of window managers. Dat doe je zo:  

```bash
sudo apt install lightdm  
```

[![](https://1.bp.blogspot.com/-RI67gqvll-Y/X-DONGv_B1I/AAAAAAAAJpE/PzO3WZE748gn4BUUnqPQxeo8OnH4JGwowCLcBGAsYHQ/w640-h480/greybird-gtk31.png)](https://1.bp.blogspot.com/-RI67gqvll-Y/X-DONGv_B1I/AAAAAAAAJpE/PzO3WZE748gn4BUUnqPQxeo8OnH4JGwowCLcBGAsYHQ/s640/greybird-gtk31.png)

_Lightdm login / display manager_

## Basis tools installeren

[![](https://1.bp.blogspot.com/-Hs3uK8L5Npw/X-DOjr938OI/AAAAAAAAJpM/y6IrNa1akDo9JZsS3K5uvU9RYIp4hVLQQCLcBGAsYHQ/w200-h200/1200px-Geany_logo.svg.png)](https://1.bp.blogspot.com/-Hs3uK8L5Npw/X-DOjr938OI/AAAAAAAAJpM/y6IrNa1akDo9JZsS3K5uvU9RYIp4hVLQQCLcBGAsYHQ/s1200/1200px-Geany_logo.svg.png)

Je hebt natuurlijk een terminal emulator, een browser en een grafische tekst editor nodig om überhaupt een bruikbare desktop te hebben. Dus die gaan we installeren.  
  
Ik gebruik als terminal emulator gnome-terminal, maar je kan ook andere opties gebruiken. Zie een lijst met populaire terminal emulators hier: [https://wiki.archlinux.org/index.php/List\_of\_applications/Utilities#Terminal\_emulators](https://wiki.archlinux.org/index.php/List_of_applications/Utilities#Terminal_emulators).  
  
Je installeert gnome-terminal zo:  

```bash
sudo apt install gnome-terminal  
```

Als tekst bewerker gebruik ik graag Geany. Ik vind Geany erg fijn omdat er goede syntax highlighting in zit, en ook andere nuttige tools. Als 2e optie zou ik voor leafpad gaan, omdat het simpel en makkelijk te gebruiken is. Je installeert Geany zo:  
  
```bash
sudo apt install geany  
```

Verder gebruikt ik firefox als browser, omdat het simpel is, en ik het ook op Windows gebruik. Firefox installeer je met het volgende command:  
  
```bash
sudo apt install firefox  
```

## TESTEN en UI

[![](https://1.bp.blogspot.com/-T6kWwFSyXlQ/X-DPF-9XYHI/AAAAAAAAJpU/cYzEmtBL0dQCSnuyBOhj9O74nqoqZ-AJwCLcBGAsYHQ/w144-h200/rclLP.png)](https://1.bp.blogspot.com/-T6kWwFSyXlQ/X-DPF-9XYHI/AAAAAAAAJpU/cYzEmtBL0dQCSnuyBOhj9O74nqoqZ-AJwCLcBGAsYHQ/s457/rclLP.png)

_Openbox menu_

TEST, TEST, TEST!  
  
We kunnen het nu testen. Herstart je computer, en log opnieuw in. Als je een display manager hebt geinstalleerd, wordt openbox vanzelf geladen, ander typ je dit:  

```bash
startx
```

Als het goed is zou Openbox moeten starten. Je ziet dan een zwart scherm, met een cursor. Niet echt mooi. Als je rechts klikt, zie je het openbox menu. Open vanuit dit menu de terminal emulator.  
  
We gaan een app installeren om een wallpaper te gebruiken. Typ:  

```bash
sudo apt install nitrogen ubuntu-wallpapers-\*  
```

Als nitrogen geinstalleerd is,  typ je `nitrogen` in de terminal. Als het goed is zie je nu een venstertje met meerdere knopjes. Klik op preferences. Klik dan op add folder. Navigeer naar `/usr/share/backgrounds`, en selecteer die folder. Je zou nu allemaal wallpapers moeten zien. Kies er een en klik op Apply.  
  
We gaan nu een dock installeren. Ik vind zelf `plank` fijn, maar je kan ook `docky` of een andere dock gebruiken. Je zou ook een panel (soort taakbalk) kunnen gbruiken, zoals `polybar` of `tint2`.  
  
Je kan plank zo installeren:  
  
```bash
sudo apt install plank  
```

Als je nu plank & intypt kan je plank starten. Als je instellingen wil veranderen kan je met rechts op de dock klikken terwijl je CTRL indrukt. Kies daarna Preferences, en je zou een venstertje met instellingen moeten zien.

[![](https://1.bp.blogspot.com/-bBOgNrnI0KM/X-DPxHxL8uI/AAAAAAAAJpc/dJoJmu04ofA73I05I6ZIeIOJ7L_sFcZGACLcBGAsYHQ/w640-h274/plank-featured-new.jpg)](https://1.bp.blogspot.com/-bBOgNrnI0KM/X-DPxHxL8uI/AAAAAAAAJpc/dJoJmu04ofA73I05I6ZIeIOJ7L_sFcZGACLcBGAsYHQ/s800/plank-featured-new.jpg)

_Plank dock_

Het rechtklik menu van openbox is nu ook nog niet echt handig. Het zou veel fijner zijn als je je eigen favoriete apps in het menu kon zetten. Nou, dat kan! Open de terminal, en typ:

```bash
obmenu
```

Als het goed is zou je nu een grafische interface moeten hebben om het menu mee aan te passen.

[![](https://1.bp.blogspot.com/-qbrCT_-6inE/X-DQF5cAYmI/AAAAAAAAJpk/DDZEUV_YFcMaaMseWCdBLSiapRAslpOnwCLcBGAsYHQ/s320/add_item.png)](https://1.bp.blogspot.com/-qbrCT_-6inE/X-DQF5cAYmI/AAAAAAAAJpk/DDZEUV_YFcMaaMseWCdBLSiapRAslpOnwCLcBGAsYHQ/s526/add_item.png)

_Obmenu_

We hebben ook een compositer nodig. Dat is een programma dat transparatie en schaduwen regelt. Goede compositers zijn bijvoorbeeld picom of xcompmgr. Ik gebruikt graag xcompmgr. Je installeert het zo:  
  
```bash
sudo apt install xcompmgr  
```

## Autostart

We willen natuurlijk wel dat onze dock en de achtergrond automatisch worden opgestart als je openbox start. Om dit te doen moet je een terminal opstarten, en hetvolgende typen:  
  
cd .config  
mkdir openbox  
sudo nano autostart.sh  
  
Als het goed is zou [Nano](https://en.wikipedia.org/wiki/GNU_nano) moeten starten. Typ het volgende:  
  
xcompmgr &  
nitrogen --restore &  
plank &  
  
Klik nu op CTRL+X om uit Nano te gaan, klik op y om te saven, en klik op ENTER om goed te keuren. Je kan nu herstarten om te kijken of het werkt.

## Themes

Het is wel een beetje lelijk nu. Om het wat mooier te maken, kunnen we themes installeren. Voordat we dat doen moeten we wel een tool installeren die het makkelijk maakt op themes te selecteren. Ik vind `lxappearance` fijn om mee te werken, dus ik installeer `lxappearance`. `lxappearance-obconf` is een add-on waarmee je Openbox ook kan instellen met `lxappearance`.  

```bash
sudo apt install lxappearance lxappearance-obconf
```

Je kan `lxappearance` starten door in de terminal `lxappearance` te typen. Je kan `lxappearance` nu sluiten, want we gaan eerst wat leuke themes installeren. Ik vind Arc-Dark een mooi openbox theme. Je kan het downloaden vanaf GitHub. Dit is de repo: <https://github.com/dglava/arc-openbox>. Je download gewoon het _arc-dark.obt_ bestand, en dat importeer je met `lxappearance` (onder Window Border)

[![](https://1.bp.blogspot.com/-hyf1pqkwZJw/X-DQa4mFA6I/AAAAAAAAJps/W--aCuhEEf47K6Rh_Yxay1nrJjmLSDR4gCLcBGAsYHQ/w400-h319/lxappearance2_misc.jpg)](https://1.bp.blogspot.com/-hyf1pqkwZJw/X-DQa4mFA6I/AAAAAAAAJps/W--aCuhEEf47K6Rh_Yxay1nrJjmLSDR4gCLcBGAsYHQ/s583/lxappearance2_misc.jpg)

_lxappearance (met obconf addon)_

Nu we een mooier Openbox theme hebben, is het tijd voor een icon theme. Ik vind het Papirus icon theme erg mooi, dus installeer ik dat:

```bash
sudo add-apt-repository ppa:papirus/papirus  
sudo apt-get update  
sudo apt-get install papirus-icon-theme
```

[![](https://1.bp.blogspot.com/-OPXSZGmp7wQ/X-DQrOhqPUI/AAAAAAAAJp0/fJTEc5naT_InbpWMFlANcvoiGhN-TTupwCLcBGAsYHQ/w640-h440/preview.png)](https://1.bp.blogspot.com/-OPXSZGmp7wQ/X-DQrOhqPUI/AAAAAAAAJp0/fJTEc5naT_InbpWMFlANcvoiGhN-TTupwCLcBGAsYHQ/s640/preview.png)

Je kan dit theme nu selecteren in `lxappearance` onder Icons. We missen nog 1 ding: een gtk theme. Ik houd erg van het standaard Adwaita-Dark theme. Het zou als het goed is al geinstalleerd moeten zijn.

Dus. Dit was het. Ik hoop dat je er iets aan gehad hebt, of het gewoon leuk vond om te lezen! Je kan mijn config files vinden in deze GitHub repo: <https://github.com/RobinBoers/dotfiles>

\- Robin
