---
title: 'Mijn eerste (goede) game!'
date: 2021-02-23T02:42:00.000-08:00
draft: false
url: /2021/02/mijn-eerste-goede-game.html
tags: 
- webdesign
- javascript
---

Ik heb de afgelopen weken erg hard gewerkt aan een game, en die is nu in een staat dat ik er tevreden mee ben. De game heet Sticks and Rocks en het is een 2d exploration game met een topdown camera. Dat betekent dat je het karakter van bovenaf ziet. Ook heeft de game random gegenereerd "destructible" terrein. Das eigenlijk gewoon een coole manier om te zeggen: je kan net als in het echt de wereld om je heen helemaal vernielen :)  

De game is gemaakt met Javascript, HTML en CSS. Dat zijn de talen waarmee ik ook websites maak. Je vraagt je misschien af: hoe kan je met webdevelopment games maken? Vrij simpel. Voor de player movement en camera gebruik ik een set css regels. Daarmee verschuif ik de map op basis van de coords van de player met css achter de player langs. Verder gebruik ik JS als basis. Daarin is de gameloop geschreven en worden input, geluid en menu's geregeld.

Als je hier meer over wil zien raad ik je aan naar de [singleplayer branch van NinjaDO](https://github.com/RobinBoers/NinjaDO/tree/singleplayer) (een andere game die ik heb gemaakt) te kijken. Dat is een heel simpele versie van NinjaDO waarin ik ook css, html en javascript gebruik.  

Dit is ook de eerste keer dat ik pixel art heb gemaakt. Pixel art is een manier van tekenen waarbij je alleen maar met vierkantjes (=pixels) werkt. Het mooie van pixel art is dat het makkelijk te maken is, en het kleine bestanden blijven. Hieronder zie je een screenshot van de game.

[![](https://1.bp.blogspot.com/-2SPcwrS9iS8/YDTXGA-MGQI/AAAAAAAAKeY/E8bmBMvW89Ms9oR7cwVq9g5zV6b1kCl3ACLcBGAsYHQ/w640-h410/sticks-and-rocks%2B-%2BCopy.png)](https://1.bp.blogspot.com/-2SPcwrS9iS8/YDTXGA-MGQI/AAAAAAAAKeY/E8bmBMvW89Ms9oR7cwVq9g5zV6b1kCl3ACLcBGAsYHQ/s1272/sticks-and-rocks%2B-%2BCopy.png)

Onderin het scherm zie je je inventory. Er zijn 2 types items in de game: hout en steen. Je kan ze verzamelen door bomen en rotsen te slaan met je hand (uhh, niet echt realistisch, ik weet het...)

Verder heb ik het hele systeem met health en damage al af, maar ik heb de tegenstanders/monsters nog niet gemaakt. Ik moet daarvoor namelijk AI maken voor die tegenstanders, en dat lijkt me nogal moeilijk. Als je het health systeem in actie wil zien kan je in de Javascript console dit invoeren:

player.hurt = true  

Wat ik ook nog wil maken is infinite terrain. Nu wordt er een vierkant van (ik denk) 10x10 tiles gegenereerd, maar dat wordt al snel saai. Het probleem is dat als ik meer tiles ga laden, zeg maar iets van 100x100, de game verschrikkelijk gaat laggen als het terrain moet worden gerendert (op het moment dat de map laadt, de player iets breekt of ergens tegenaan loopt)

De oplossing hiervoor is waarschijnlijk het laden in chunks. Chunks zijn (net als in Minecraft) stukken van 10x10 tiles (oke, in Minecraft is het 16x16, maar je snapt het idee). Zodra je uit een chunk loopt, wordt de volgende gegenereerd. De oude wordt dan opgeslagen in een savefile, en zodra je terug loopt, wordt die weer geladen. Hierdoor blijven je wijzigingen behouden (want er is destructible terrain)

Dus dat is de staat van de game momenteel, en mijn plannen voor het spel. Je kan een demo spelen op mijn net aangemaakte itch.io profiel, die je hier kan vinden: [robijntje.itch.io](http://robijntje.itch.io)

Laat dan gelijk even in de comments (hier of op itch.io) weten wat je er van vond.

\- Robin

PS: voordat ik de vraag krijg waarom ik op itch.io de username Robijntje heb, dat mijn bijnaam die mijn vrienden met hebben gegeven. Ik gebruik die bijnaam wel op meer plekken (zoals reddit bijvoorbeeld)
