---
title: 'ThinkChat: mijn nieuwe chatapp'
date: 2021-02-03T03:05:00.007-08:00
draft: false
url: /2021/02/thinkchat-mijn-nieuwe-chatapp.html
tags: 
- chatten
- website
- ios
- pwa
- app
- android
- github
- thinkchat
---

[![](https://1.bp.blogspot.com/-lYM1ULJfRBY/YBKkqsR0ViI/AAAAAAAAKG8/-5BkmMPy370YMEDcTvGUVvnzEHaF1P9ZACLcBGAsYHQ/w200-h200/icon.png)](https://1.bp.blogspot.com/-lYM1ULJfRBY/YBKkqsR0ViI/AAAAAAAAKG8/-5BkmMPy370YMEDcTvGUVvnzEHaF1P9ZACLcBGAsYHQ/s720/icon.png)

Ik heb de laatste paar dagen erg hard gewerkt aan een nieuw project: ThinkChat

ThinkChat is een simpele chatapp die gebruik maakt van socket.io en Node.js. Er zijn meerdere rooms, en je hoeft alleen maar een nickname in te vullen om te kunnen chatten.

Verder heb ik nog wat leuke dingen toegevoegd. Iedereen krijgt bijvoorbeeld een 4-cijferige "pin" of "tag" achter hun nickname. Hierdoor zijn alle nicknames uniek, en kunnen er bijvoorbeeld meerdere Robins in de chat zitten. Ook wordt er voor elke naam een random kleur gegenereed (net als in whatsapp), waardoor je verschillende mensen snel kan herkennen. Ook leuk: je nickname wordt automatisch opgeslagen in localStorage, zodat je volgende keer je als je wil chatten je nickname geeneens hoeft in te vullen. Daarnaast kan je de app ook als PWA (Progressive Web App) installeren op zowel iOS als Android.

Dus hoe werkt het? Als je de app opent moet je eerst verbinden met een server (alleen de eerste keer, daarna verbind de app automatisch met die server). Je kan lokaal een server hosten, of bijvoorbeeld een VPS gebruiken. Als je bent verbonden met de server kies je een nickname, en krijg je het chat scherm te zien. Dit is heel simpel: onderaan een tekstbalk en bovenaan het channel / de room waar je inzit. Je kan bovenin ook zien hoeveel mensen er online zijn. Je zit standaard in het general channel, maar door op de channelnaam te klikken krijg je een menu om een ander channel te openen. Op grotere schermen (zoals landscape tablet en laptop) zie je de sidebar automatisch al.

Je kan het project hier vinden: [https://chat.geheimesite.nl/](https://chat.geheimesite.nl/)

 - Robin