---
title: 'Tiling Window Managers: wat zijn het en wat zijn de voordelen?'
date: 2021-04-25T03:50:00.002-07:00
draft: false
url: /2021/04/tiling-window-managers-wat-zijn-het-en.html
tags: 
- linux
---

HAAAAALLLOOO! Hier ben ik weer. Vandaag ga ik jullie iets vertellen over tiling window managers.

Een window manager is een programma dat op iedere computer staat. De window manager managet de windows. Als je het over windows hebt gaat het in dit geval niet over het besturingssysteem van Microsoft maar over zogenaamde vensters: de vakjes waar je apps in leven.

De meeste window managers zijn floating window managers. Bij een floating window manager kunnen de windows overal op het scherm geplaatst worden. Je kan ze rondslepen en ze kunnen overlappen.

De meeste floating window managers hebben pseudo-tiling. Je kent het wel: je sleept een window tegen de rechter schermrand en hij neemt de rechterhelft van het scherm in beslag.

Maar wat is een tiling window manager dan? Een tiling window manager tilet de windows voor je. Als je 1 app opent is deze fullscreen. Als je 2 apps open hebt staan zijn ze allebei de helft, bij 3 allemaal een derde bij 4 een vierde enzovoort.

Het voordeel hiervan is dat je altijd overzicht hebt. Je kan altijd je apps zien en je raakt ze nooit "kwijt" omdat ze ergens anders achter zitten. Daarnaast gebruik je de maximale capaciteit van je scherm. En, je sluit vaak de apps die je niet meer gebruikt omdat ze anders ruimte in beslag nemen. Hierdoor heb je niet 3 miljoen dingen openstaan die allemaal RAM, CPU en andere stuff opslokken.

Misschien vraag je je af: wat als ik verschillende apps fullscreen wil hebben, maar toch tegelijk open moet hebben? Daarvoor gebruik je workspaces of virtual desktops. Dit is net alsof je meerdere monitoren hebt, maar dan met 1 scherm. Je kan van workspace switchen en zo toch meerdere dingen tegelijk doen, terwijl je het overzicht behoud.

Als je een tiling window manager in linux wil gebruiken kan je deze gewoon downloaden vanuit de repos en dan vanaf je login scherm/display manager starten.

In Windows kan je via WSL (Windows Subsystem for Linux) een tiling window manager starten, maar let erop dat je performance problemen kan krijgen omdat je hem binnen Windows draait. Voor Windows is er ook nog een ander alternatief: PowerToys. Daarin zit een tool waarover ik al eerder een blogje heb geschreven. Dit is ook psuedo-tiling, maar je kan in ieder geval je eigen layouts maken.

Ik hoop dat jullie dit blogje interresant vonden, en tot de volgende keer!

\-Robin
