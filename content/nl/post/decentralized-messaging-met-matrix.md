---
title: "Decentralized messaging met Matrix"
date: 2023-04-24T10:52:51+02:00
tags: 
- open source
- social media
---

Laatst publiceerde ik een post [Hoe kunnen we software lokaler maken?](https://blog.geheimesite.nl/post/lokalere-software/), waarin ik het had over het decentraliseren (en lokaler maken) van diensten door iedereen een eigen instance te laten runnen.

Ik heb sindsdien nagedacht en ik vroeg me af waarom ik nog steeds op centrale platforms zoals Discord, Whatsapp en GitHub zit.

Ik was eigenlijk al aardig op weg: mijn website wordt gehost op mijn eigen domein op mijn eigen server, mijn email draait ook op mijn eigen server, mijn notities zitten tegenwoordig ingebouwd in mijn emailaccount en mijn contacten, staan wederom op mijn eigen (lokale) server.

Het enige dat nog echt overbleef was instant messaging en het hosten van mijn source code. Om dit ook in eigen beheer te nemen heb ik een [VPS](https://en.wikipedia.org/wiki/Virtual_private_server) aangeschaft[^1].

Vanaf nu wordt mijn source code dus gehost [op mijn eigen site](https://git.geheimesite.nl) met Gitea[^2], maar dat is niet het onderwerp van deze post. Deze post gaat over het [Matrix-protocol](https://matrix.org) voor instant messaging. Dus wat is Matrix? Matrix is een protocol voor chat met end-to-end encryptie ingebouwd.

Wat is daar zo speciaal aan dan? Dat doen Whatsapp en Signal ook! Het verschil is echter dat Whatsapp en Signal gebruik maken van centrale servers die gehost worden door Whatsapp en Signal. Matrix verschilt daarin: iedereen host zijn eigen "homeserver". Op je homeserver staan al je gegevens: de bestanden die je uploadt, je profiel (zoals email en telefoonnummer) en natuurlijk de inhoud van je chats (encrypted dan).

Matrix lijkt dus nogal op hoe Mastodon ook werkt: iedereen kan een instance (homeserver in dit geval) kiezen en de homeservers kunnen met elkaar communiceren via het Matrix-protocol.

Matrix heeft daarnaast nog een belangrijk pluspunt: ze hebben een API voor het bouwen van bridges. Bridges zijn speciale apps die je aan je homeserver koppelt, die kunnen praten met andere services (zoals Whatsapp of Discord). Hiermee zorg je dus dat je nog steeds kan praten met mensen die nog op Whatsapp en Discord zitten. Voor hun lijkt het alsof je gewoon de Whatsapp/Discord app gebruikt, en voor jou lijkt het alsof ze gewoon op een andere homeserver zitten.

Bridgen heeft wel een nadeel: je hebt nog steeds een Whatsapp/Discord account nodig, en ze kunnen nog steeds (mogelijk) je berichten bekijken[^3]. Dit is een nadeel aan Matrix: je moet de homeservers van de mensen met wie je praat natuurlijk wel vertrouwen.

Het voordeel van het gebruiken van Matrix is echter wel erg groot. Al je messages die je naar mensen die ook op Matrix zitten stuurt zijn automatisch encrypted, en je kan al je chat accounts gebruiken vanuit één app (die niet eens aan je telefoonnummer gekoppeld is). Daarnaast staat er altijd een kopie van je chats op je eigen server, dus zitten je messages niet "opgesloten" in Whatsapp.

Ik ben dus erg tevreden met Matrix, en ik ben heel blij dat ik eindelijk kan zeggen dat ik volledig onafhankelijk ben van grote techbedrijven!

[^1]: Misschien vraag je je nu af: waarom een VPS en niet een server in je eigen huis? Dat zou namelijk een stuk lokaler zijn dan een VPS in een datacentrum dat op 30+ kilometer ligt. Geef mijn vader de schuld: ik mag geen port-forwarding doen :(

[^2]: Ja, ik weet dat Forgejo bestaan, maar dat was nog in development toen ik dit aanmaakte.

[^3]: Bridgen wordt vaak ook als iets "tijdelijks" gezien, voor als nog niet iedereen naar Matrix geswitcht is.
