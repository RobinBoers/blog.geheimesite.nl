---
title: 'Nieuw project: Nibor'
date: 2020-07-27T00:30:00.004-07:00
draft: false
url: /2020/07/nieuw-project-nibor.html
tags: 
- javascript
- webdesign
---

Hoi, ik ben een tijdje geleden aan een nieuw project begonnen, en het is nu in de fase waarin het redelijk werkt. Het is een virtuele assistent genaamd Nibor Virtual Assistant, of gewoon kort: Nibor.

![Nibor logo](https://code.geheimesite.nl/beta/nibor/logo.png)

Nibor is een klein programma dat de [speech-recognition API](https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition) gebruikt. Je kunt hem simpele opdrachten geven, zoals:

*   Vertel een grap.
*   Welke dag is het?
*   Hoe laat is het vandaag?
*   Wat is het weer?

Hij is nog niet erg slim, omdat ik nog geen goede manier heb gevonden om commando's op te slaan. Ik check nu op trefwoorden zoals "weer" of "hoe"+"laat" met if-else statements, maar dat is niet efficient, en de code wordt er verschrikkelijk rommelig van.

## Spotify

Ik maak ook gebruik van de Spotify Web Playback API. Daarmee kan je je Spotify Account koppelen aan Nibor, en kan je simpele opdrachten geven zoals:

{{< figure src="https://1.bp.blogspot.com/-Glgt1VYSbBQ/Xx6CMZvRaJI/AAAAAAAAIMo/pSUzaWHq_nEfKuVA7PP2xuewPoHN8guEgCLcBGAsYHQ/s511/Annotation%2B2020-07-27%2B092633.png" class="max-w-text" alt="Verbinden met Spotify" >}}

*   Skip dit nummer
*   Speel een muziekje af.
*   Ga terug naar het vorige nummer

Wil je Spotify koppelen? Klik dan bij het opstarten van Nibor op OK, en log in en klik op AGREE. Daarna ga je naar de app van Spotify, op PC of Mobiel, en klik je op apparaten verbinden. (Net zoals het koppelen van een speaker). Daarna zie bij Nibor play buttons.

## Rekenen

Nibor kan redelijk rekenen. Hij kan geen wiskundige formules oplossen, maar je kan bijvoorbeeld vragen:

*   Wat is 6 x 3
*   Wat is 420 : 5
*   Wat is 376 + 236.126
*   Wat is 73 - 56
  
Wil je Nibor een keer uitproberen? Dat kan!

Als je naar mijn test-domein ([code.geheimesite.nl](http://code.geheimesite.nl)) gaat staat Nibor daartussen.

De broncode komt voor geïnteresseerde ook op GitHub

\- Robin
