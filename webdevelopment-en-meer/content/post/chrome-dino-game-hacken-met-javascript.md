---
title: 'Chrome Dino  game hacken met Javascript'
date: 2021-01-13T09:16:00.004-08:00
draft: false
url: /2021/01/chrome-dino-game-hacken-met-javascript.html
tags: 
- javascript
- hacken
---

Ken je die Dinosaurus die je te zien krijgt als je geen internet hebt in Google Chrome? Wist je dat dat een game was? Waarschijnlijk wel. Zo niet moet je eens op spatiebalk drukken als je hem ziet. Voor de lezers die wisten dat de game bestond: vandaag gaan we hem hacken!

Dus, hoe gaan we dat doen? Nou simpel: installeer Kali Linux, download hacking tools van sketchy websites, .....

Nee, tuurlijk niet, we houden het simpel! Het eerste wat je moet weten is dat de game is geschreven in Javascript. Dat is een programmeertaal waarmee websites interactief gemaakt kunnen worden. Javascript is client side. Dat betekent dat de code op jouw computer wordt uitgevoerd. Dat maakt het erg simpel om te hacken!

[![](https://1.bp.blogspot.com/-NC27jatgu8c/X_8q1NlipjI/AAAAAAAAJ5o/ZrKi86sTDaMSg3QRB6mYLPgxc6F-Fp22QCLcBGAsYHQ/s320/unnamed.jpg)](https://1.bp.blogspot.com/-NC27jatgu8c/X_8q1NlipjI/AAAAAAAAJ5o/ZrKi86sTDaMSg3QRB6mYLPgxc6F-Fp22QCLcBGAsYHQ/s640/unnamed.jpg)

Wist je trouwens dat je de game ook kan spelen als je gewoon internet hebt? Als je in Chrome in de adressbalk [chrome://dino](chrome://dino) intypt, zou je een bekend scherm moeten zien

Dus, wat gaan we precies doen? Stap 1 is het openen van de game. Ik leg hierboven uit hoe, maar je kan natuurlijk ook de kabel uit de router trekken :)

Als je de game hebt geopend, moet je ergens op de pagina rechts klikken en op "Inspecteren" klikken. Je kan ook de sneltoets CTRL + SHIFT + I gebruiken.Je zou nu rechts of onder een vak moeten zien verschijnen met allemaal informatie. Dit is de HTML DOM code (Document Object Model), maar dat hebben we allemaal niet nodig. We hebben de Javascript console nodig, dus klikken we bovenaan op "Console". Je kan hier nu de volgende commando's typen:

```javascript
Runner.instance\_.gameOver = () => {console.log("Ik ben een vampier, ik ben onsterfelijk!")}

Runner.instance\_.config.ACCELERATION = 100;  
```

De bovenstaande commando's doen het volgende:

1.  Het eerste command overschrijft de functie die wordt afgespeelt als de dino dood gaat, en maakt er een praktisch lege functie van. Hierdoor kan de dino niet meer dood gaan.
2.  Het 2e command stelt de snelheid van de dino in (of eigenlijk de versnelling). Ik heb hem hier op 100 gezet, maar ik denk dat je zo ver als het 32-bit integer limit kan (rond de 32K)

Als het goed is vliegt de dino dus over het scherm en kan hij niet dood. Je wil nu nog wel je score kunnen opslaan. Dat doe je door dit command te typen:

```javascript
Runner.instance\_.saveHighScore(Runner.instance\_.distanceRan)
```

Hierdoor wordt de afstand die je momenteel gelopen hebt als highscore opgeslagen. Nu vraag je je af: Robin, kan ik niet ook zoiets als `Runner.instance\_.saveHighScore(999999)` doen?

Jup, dat kan. "En waarom heb je dat dan niet gewoon gedaan?". Omdat dit veel cooler is natuurlijk!

Nou ja, ik hoop dat je het leuk vond om te lezen, en tot de volgende keer!

\- Robin

PS: Ik ben jarig 🥳
