---
title: 'Dualboot een Raspberry Pi met RetroPie, Raspbian en Kodi'
date: 2020-06-22T06:10:00.004-07:00
draft: false
url: /2020/06/dualboot-een-raspberry-pi-met-retropie.html
tags: 
- kodi
- retropie
- raspbian
- booting
- multiboot
- retrogaming
- diy
- dualboot
- raspberry pi
---

Ik ben bezig om een Raspberry Pi Powerd tablet / Nintendo Switch te maken. Toen ik aan de software kant bezig was, had ik er in eerste instantie voor gekozen om meerdere keren Raspbian te installeren met BerryBoot, en dan op een van die versies Kodi te installeren, op een andere RetroPie, en op de laatste niks.

Ik kwam er alleen vandaag achter dat je in RetroPie via het Setup menu Kodi, en de Pixel desktop kan installeren.

[![](https://1.bp.blogspot.com/-5h9D9iFXFbw/XvJNeKoS2iI/AAAAAAAAHrA/fdKGTdKYWC4zO6Xfq8lV58nlXLVETWSEQCK4BGAsYHg/w400-h108/RetroPieWebsiteLogo.png)](https://1.bp.blogspot.com/-5h9D9iFXFbw/XvJNeKoS2iI/AAAAAAAAHrA/fdKGTdKYWC4zO6Xfq8lV58nlXLVETWSEQCK4BGAsYHg/s520/RetroPieWebsiteLogo.png)

  

Vandaag ga ik je uitleggen hoe je Kodi en de Pixel desktop (de standaard Raspbian desktop) naast RetroPie kan installeren.

Eerst wat achtergrondinformatie. RetroPie is software waarmee je games van de NES, SNES, Gameboy, Commodore, Atari etc kan spelen op een Raspberry Pi. Kodi is software waarmee je video's kan bekijken (een media center) en de Pixel desktop is een interface waarmee je programma's kan openen (net als Gnome of KDE). RetroPie en Kodi zijn programma's. Raspbian is een besturingssysteem. RetroPie en Kodi worden normaal gedownload als een pre-configured image, waardoor de meeste mensen denken dat het ook besturingssystemen zijn. Maar omdat het programma's zijn, kan je ze allemaal tegelijk op 1 image draaien, waardoor je veel meer opslagruimte over houd.

In deze tutorial ga ik dus uitleggen hoe dat moet

  

**Stap 1**

Ga naar [retropie.org.uk](http://retropie.org.uk) en klik op download. Scroll naar beneden en klik op het op welke versie van de Pi je hebt. Download dit image.

  

**Stap 2**

Download de de [SD card formatter](https://www.sdcard.org/downloads/formatter/) en [Rufus](https://rufus.ie/)

  

**Stap 3**

Format je SD kaartje met de SD card formatter, en open Rufus.

Kies in Rufus je SD kaartje uit het dropdown menu, en klik op select. Navigeer naar de plek waar je je RetroPie image hebt opgeslagen. Klik daarna op START. Wacht tot Rufus klaar is, en klik op CLOSE

  

**Stap 4**

Stop je SD kaartje in de Pi, en start hem op. Volg de RetroPie setup totdat je in het games select menu bent. Klik op RetroPie (dat is de enige optie) Scroll naar beneden tot je bij RetroPie-Setup komt. Klik deze optie aan. Je wordt een blauw scherm in gebracht. Klik hier op Manage packages

  

[![](https://1.bp.blogspot.com/-Gnp_oOt8vZ4/XvJOA0v7aiI/AAAAAAAAHrU/K3xCPYwJnHASmkJlKxuRqnQ2OtqGeUQKgCK4BGAsYHg/w625-h364/Annotation%2B2020-06-23%2B204612.png)](https://1.bp.blogspot.com/-Gnp_oOt8vZ4/XvJOA0v7aiI/AAAAAAAAHrU/K3xCPYwJnHASmkJlKxuRqnQ2OtqGeUQKgCK4BGAsYHg/s1325/Annotation%2B2020-06-23%2B204612.png)

  

  

  

**Stap 5

[![](https://1.bp.blogspot.com/-8wgELVtv-ks/XvJOQxRdxCI/AAAAAAAAHro/JeVTqy4lUwgoI2nMomwBkJGila7EW0ZswCK4BGAsYHg/w131-h131/Thumbnail-symbol-transparent.png)](https://1.bp.blogspot.com/-8wgELVtv-ks/XvJOQxRdxCI/AAAAAAAAHro/JeVTqy4lUwgoI2nMomwBkJGila7EW0ZswCK4BGAsYHg/s625/Thumbnail-symbol-transparent.png)

**

Klik nu op Optional packages, en scroll naar beneden tot je Kodi ziet. Klik erop en klik op install

Dit kan even duren, afhankelijk van je internetverbinding

  

**Stap 6**

Als het klaar is, ga je terug naar het startscherm van de RetroPie-Setup (waar je eerst op Manage Packages moest klikken) Klik nu op Exit

  

**Stap 7**

Klik op START op je controller, en klik op QUIT. Klik nu op RESTART SYSTEM

  

**Stap 8**

Als je Pi is geherstart, ga je weer naar de RetroPie-Setup. Ga dit keer naar Configuration/tools

Klik op Raspian related tools en daarna op install Pixel desktop.

  

[![](https://1.bp.blogspot.com/-2r2STLP_2fY/XvJOls_oneI/AAAAAAAAHr8/kR8wXJ7Hkswz1MUf1CsiDMotc4_Rg8i8wCK4BGAsYHg/w625-h351/pi3-10.jpg)](https://1.bp.blogspot.com/-2r2STLP_2fY/XvJOls_oneI/AAAAAAAAHr8/kR8wXJ7Hkswz1MUf1CsiDMotc4_Rg8i8wCK4BGAsYHg/s1920/pi3-10.jpg)

  

**Stap 9**

Wacht tot de Pi klaar is. Waarschijnlijk moet je eerst een paar keer op OK klikken.

  

**Stap 10**

Herstart je Pi zoals in stap 6

  

**Stap 11**

Als het goed is is er een knopje ports verschenen op het games select menu. Klik hierop, en vanuit hier zou je Kodi of de Pixel desktop moeten kunnen starten!

  

Goedzo, je hebt successvol je Raspberry Pi gedualboot met RetroPie, Kodi en de Pixel desktop!

  

\- Robin