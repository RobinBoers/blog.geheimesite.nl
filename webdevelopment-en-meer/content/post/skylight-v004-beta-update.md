---
title: 'SkyLight v0.04-beta update'
date: 2021-08-20T11:34:00.002-07:00
draft: false
url: /2021/08/skylight-v004-beta-update.html
tags: 
- css
- SkyLight
- code
- html5
- coderen
- css3
- html
- programma
- w3.css
- php
- programmeren
---

Ik heb twee weken geleden een update voor SkyLight gepubliceerd. In deze versie worden comments en RSS feeds toegevoegd en heb ik de UI van het admin panel herschreven. Daarnaast zouden logo's nu moeten werken in de standaard themes. Je kan de zoals altijd de update downloaden en installeren vanaf het About tab in je admin panel.

De comments werken met een `id` en een `post_id`. Het `id` is om de comment zelf te identificeren zodat je ze kan verwijderen. Het `post_id` wordt gebruikt om ze bij de juiste post weer te geven.

Verder heb ik dus de backend UI voor het admin panel herschreven. Ik maakte eerst gebruik van PHP pages waarbij ik de header, footer en sidebar telkens opnieuw had gecopypaste. Het was een nachtmerrie om te onderhouden omdat ik dan de UI voor alle modules tegelijk moest updaten als er een wijzeging werd gemaakt. Daarom werk ik nu met een beter systeem. Het bestand `modules.json` bevat de bestandsnamen, weergave namen en icons van alle modules. Ik include de footer, sidebar en header, die gebruik maken van de modules list om de juiste informatie te tonen.

De RSS feed wordt dynamisch opgebouwd door een PHP bestand met Content-Type text/xml te gebruiken. Hierdoor kan ik met PHP informatie uit de editor halen en deze in de XML van de RSS feed loaden. (het heeft me totaal niet een uur gekost om dit te bedenken 😉).

De update functie maakt nu gebruik van een extra script genaamd `userspace-backup.php` dat de bestanden in userspace (je content) die nieuw zijn aanmaakt als die nog niet bestaan (zoals comments.json deze update).

Het is aangeraden je data te backuppen voordat je update omdat er veel gewijzigd is in de code. Ook is het aangeraden om de optionele CSS bestanden te updaten zodat je geen glitches in de layout van je admin panel krijgt.