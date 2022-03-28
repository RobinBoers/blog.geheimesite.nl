---
title: 'Mogelijke besturingssystemen voor mijn DIY telefoon'
date: 2021-05-09T05:51:00.000-07:00
draft: false
url: /2021/05/mogelijke-besturingssystemen-voor-mijn.html
tags: 
- diy
- rpi
---

Zoals ik in mijn vorige post al zei draait mijn theoretische telefoon Linux. Ik ben momenteel aan het testen met verschillende Linux distro's / mobile shells. Ik gebruik hiervoor een Raspberry Pi omdat ik die toevallig heb, maar in de toekomst zijn andere SBCs (singleboard computers) niet uitgesloten.

Een mobile shell is de interface waarin je apps draaien (homescherm, launcher, notificatiecentrum, lockscreen)

Dit zijn tot nu toe de meest belovende opties:

### Ubuntu Touch / Lomiri

Ubuntu Touch is een versie van Ubuntu die origineel is gemaakt door Canonical (het bedrijf dat ook Ubuntu maakt) maar is later overgenomen door UBports. Het is een soort uitgepakte versie van Ubuntu die geschikt is voor touchscreens en ARM apparaten. Ubuntu Touch gebruikt Lomiri, de opvolger van Unity8, als desktop environment. Het is ook mogelijk om Lomiri in postmarketOS (pmOS) te gebruiken. Ik heb Ubuntu Touch op de Raspberry Pi geprobeerd, maar het was vrij sloom.

[![](https://1.bp.blogspot.com/-JaSfZsHiDto/YA1dT1C2ILI/AAAAAAAAKFM/iNYPRP66AMQcCKwBkt_7bqK-OKV0Vd4IgCLcBGAsYHQ/w640-h238/background_Ubuntu%2BTouch.jpg)](https://1.bp.blogspot.com/-JaSfZsHiDto/YA1dT1C2ILI/AAAAAAAAKFM/iNYPRP66AMQcCKwBkt_7bqK-OKV0Vd4IgCLcBGAsYHQ/s1600/background_Ubuntu%2BTouch.jpg)

Lomiri op verschillende apparaten ([https://ubports.com/](https://ubports.com/))

### KDE Plasma Mobile

Plasma Mobile is een mobiele versie van de populaire Plasma Desktop van KDE. Net als de rest van deze shells kan dit ook in pmOS worden geinstalleerd. Als je het bovenop Raspbian wil installeren kan dat ook. Ik heb het zelf nog niet werkend gekregen omdat de packages niet in de repo's te vinden zijn en de wiki page outdated is, maar als je het zelf wil proberen kan je de documentatie hier vinden: [https://community.kde.org/Raspberry_Pi](https://community.kde.org/Raspberry_Pi)

Plasma Mobile heeft goede intergratie met de KDE Plasma desktop (mijn Desktop Environment) via KDE Connect. Plasma Mobile is nog onder ontwikkeling, en nog niet echt productie-ready.

![](https://1.bp.blogspot.com/-CUTohcLYffQ/YJfaWdfA9JI/AAAAAAAAKyo/QGhG06jX6AUGMwgZqU2Fu7RpjGDi-WkBgCLcBGAsYHQ/w640-h416/2021-05-09-144907_691x449_scrot.png)

KDE Plasma Shell en apps ([https://www.plasma-mobile.org/screenshots](https://www.plasma-mobile.org/screenshots))

### Phosh

Dit is een open-source Wayland shell voor Gnome. Phosh is wat [Purism](https://puri.sm/) gebruikt in hun PureOS voor de Liberem 5. Je kan Phosh ook installeren in pmOS. Phosh is nog wel in ontwikkeling, dus kan wat instabiel zijn.

Phosh gebruikt libhandy om desktop apps goed te laten werken op een telefoonscherm.

Aangezien Phosh op GNOME gebaseerd is kan het wel laggen. Zo ver ik kon vinden is het nog niet mogelijk om Phosh op een Raspberry Pi te krijgen.

[![](https://1.bp.blogspot.com/-LDLGMIgGBi0/YA1drwxJBvI/AAAAAAAAKFY/BUh1PxoxEGEATiIumeAImpR_l7C6TgZFQCLcBGAsYHQ/w640-h424/phosh-1.png)](https://1.bp.blogspot.com/-LDLGMIgGBi0/YA1drwxJBvI/AAAAAAAAKFY/BUh1PxoxEGEATiIumeAImpR_l7C6TgZFQCLcBGAsYHQ/s972/phosh-1.png)

Phosh Shell ([https://puri.sm/posts/phosh-overview](https://puri.sm/posts/phosh-overview))

### Android of ChromiumOS

In de doelen voor dit project staat dat ik geen Android wil gebruiken, omdat ik dan nog steeds van Google afhankelijk ben. (en dan had ik net zo goed een Android telefoon kunnen kopen)

Maar het is echter misschien voor anderen handig om te weten dat zowel Android (LineageOS) en ChromiumOS (fydeOS) voor de Raspberry Pi en andere SBCs beschikbaar zijn. Daarnaast zijn er nog andere Android ROMS zoals /e/ die als doel hebben Android te degooglen

### Zelf een Linux distro maken

Ik zou Manjaro ARM kunnen downloaden en dan zelf de nodige onderdelen voor een mobiele distro kunnen installeren (libhandy, een shell, virtual keyboard, drivers). Ik zou dan wel moeten uitzoeken hoe dat precies moet.

Voor nu ziet postmarketOS er het meest belovend uit omdat het veel verschillende shells ondersteunt.

\- Robin
