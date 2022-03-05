---
title: 'Nieuwe app: Website-To-Webapp'
date: 2020-06-23T10:55:00.001-07:00
draft: false
url: /2020/06/nieuwe-app-website-to-webapp.html
tags: 
- onsenui
- appdevelopment
- coderen
- html
- webdevelopment
- webapp
- ios
- code
- webdesign
- app
- programma
- apps
---

Ik heb de laatste tijd hard gewerkt aan een nieuwe app: Website-To-Webapp. Met deze app kun je van elke website simpel een PWA maken.  

  

PWA staat voor Progressive Web App, en betekent eigenlijk dat als je een website toevoegt aan je homescherm, hij opent als app (in een apart scherm). Het voordeel van PWA’s over native apps is dat ze volledig cloud based zijn, en dus geen opslag op je telefoon in beslag nemen. Ook kan je je apps in 1 simpele taal programmeren (html, wil je er meer over weten? Bekijk dan deze tutorial) en werkt het dan voor alle platforms (iOS, Android, fireOS etc.), in plaats van dat je veel verschillende programmeertalen voor elk platform hoeft te leren.

Het concept is als eerste (in 2007) bedacht door Steve Jobs, maar na de introductie van de App Store weggedaan

Jaren later, in 2015 is de term PWA bedacht door Google ontwikkelaars. Wil je meer over de geschiedenis van PWA’s weten? Kijk eens hier:

[https://medium.com/progressivewebapps/history-of-progressive-web-apps-4c912533a531](https://medium.com/progressivewebapps/history-of-progressive-web-apps-4c912533a531)

  

[![](https://1.bp.blogspot.com/-SjzXX_rPAXA/XvJByINq4-I/AAAAAAAAHos/16EL8l6rffIAqcb9QR-Vh922JXsKDlt0QCLcBGAsYHQ/s320/6FACF7F1-71CB-43A6-9077-976EED876C78.png)](https://1.bp.blogspot.com/-SjzXX_rPAXA/XvJByINq4-I/AAAAAAAAHos/16EL8l6rffIAqcb9QR-Vh922JXsKDlt0QCLcBGAsYHQ/s1600/6FACF7F1-71CB-43A6-9077-976EED876C78.png)

  

  

Mijn tool werkt zo: ga op je mobiele apparaat naar [code.geheimesite.nl](http://code.geheimesite.nl/) en klik op Website-To-Webapp. Voer een webadres in en klik op Create. Volg nu de stappen op het scherm. Het is belangrijk dat je de tool zelf niet als PWA installeert, want dan werkt het niet meer.  

  

Om deze app te maken heb ik het volgende gedaan: ik heb eerst een coole app ontworpen met [Onsenui](https://onsen.io/) en daarna een script toegevoegd wat een [dynamisch PWA manifest](https://medium.com/@alshakero/how-to-setup-your-web-app-manifest-dynamically-using-javascript-f7fbee899a61) maakt. Het nadeel van deze methode is dat je bovenin een klein balkje blijft zien, omdat je officieel geen redirects naar andere websites in je code kan gebruiken.

  

Als je een kijkje wilt nemen in de code kan dat, want de code is openbaar op mijn GitHub.

[https://github.com/RobinBoers/Website-To-Webapp](https://github.com/RobinBoers/Website-To-Webapp)

  

\- Robin