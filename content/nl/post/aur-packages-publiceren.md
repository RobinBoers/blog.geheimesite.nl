---
title: 'AUR packages publiceren'
date: 2021-07-26T11:46:00.001-07:00
draft: false
url: /2021/07/aur-packages-publiceren.html
tags: 
- aur
- phaser
- linux
---

Zoals ik misschien al eerder heb verteld werkt Linux met package managers en repositories. Om even te herhalen:

_Een package manager is een programma dat automatisch software voor jouw installeert. In plaats van naar de website van Mozilla te gaan, de Firefox installer te downloaden en installeren vertel je je package manager gewoon Firefox te installeren. De package manager kijkt voor jouw in een soort grote lijst software genaamd de repository of Firefox beschikbaar is en waar dat dan het best kan worden gedownload (bijv. van een Amerikaanse of Britse server). Hierdoor klik je niet perongeluk op de verkeerde download knop / advertentie, beland je niet op de verkeerde website en is software installeren veel makkelijker. Zelfs Windows heeft sinds kort een package manager genaamd [winget](https://docs.microsoft.com/en-us/windows/package-manager/winget/)._

Per Linux distro zijn er repositories. De software daarin word gecheck op veiligheid door de maintainers van de distro. De distro die ik gebruik, Arch Linux, heeft heeft daarnaast ook nog de AUR. De AUR staat voor Arch User Repository en is een repository waar software gemaakt door de community in staat. Je kan dus als gebruiker software toevoegen aan de AUR en die kunnen anderen dan installeren.

De laatste tijd heb ik weer gewerkt aan mijn game CutieTanks. Het leek me al een tijdje leuk om iets in de AUR te installeren en dat heb ik nu dus gedaan :)

Een package in de AUR is als je eenmaal weet hoe het moet niet erg moeilijk, maar het koste me toch een hele middag om het voor elkaar te krijgen. Het komt eigenlijk op het volgende neer:

Maak een account aan bij de AUR. Je hebt daar alleen een username en emailadres voor nodig. Je kan hier een AUR account aanmaken: [https://aur.archlinux.org/register](https://aur.archlinux.org/register)  

Maak dan een SSH keypair aan. Met een SSH keypair kan je met een server verbinden via SSH zonder een wachtwoord te gebruiken. Lees daar hier meer over: [https://linuxiac.com/generate-ssh-key-pair](https://linuxiac.com/generate-ssh-key-pair). Je moet je SSH public key (die in id\_rsa.pub) in je AUR account invoeren in het veld _SSH Public Key_. Dit kan ook al bij het aanmaken van je account.

Je kan dan via SSH een git repo clonen en daar je PKGBUILD in toevoegen. Dat kan je met het volgende command doen: (vervang package\_name natuurlijk met de naam van je package)  

```bash
git clone ssh://aur@aur.archlinux.org/_package\_name_.git
```

Je PKGBUILD is een bestand waarin precies staat hoe de software geinstalleerd moet worden. DistroTube heeft een hele goede video gemaakt in samenwerking met BigPod over hoe je zo'n PKGBUILD maakt. Zie die hieronder:  

Je moet daarna een .SRCINFO bestand maken. Hier staat allemaal informatie over jouw package in. Je kan deze heel makkelijk genereren met het volgende command:

```bash
makepkg --printsrcinfo > .SRCINFO
```

Lees nu eerst de guidelines en kijk of je package daar aan voldoet. Je kan de guidelines voor de AUR hier vinden: [https://wiki.archlinux.org/title/AUR\_submission\_guidelines](https://wiki.archlinux.org/title/AUR_submission_guidelines) Als je al de nodige bestanden hebt toegevoegd en de guidelines hebt gelezen kan je je package publiceren met de volgende commands:

```bash
git add .
git commit -m "initial commit"
git push
```

Als het goed is zou je package nu gepubliceerd moeten worden. Anderen kunnen nu je package installeren met een AUR helper zoals yay of paru. Je kan bijvoorbeeld mijn game installeren met het volgende command:

```bash
yay -S cutie-tanks
```

Doei,

\-Robin
