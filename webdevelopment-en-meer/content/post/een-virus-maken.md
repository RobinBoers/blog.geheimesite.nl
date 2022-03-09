---
title: 'Een virus maken!'
date: 2019-11-27T07:57:00.003-08:00
draft: false
url: /2019/11/een-virus-maken.html
tags: 
- windows
---

[![](https://1.bp.blogspot.com/-P--PzZVNvQI/Xd6TwbTyF1I/AAAAAAAABzc/1z4gvn2ZljI_Pk5x6U7WLDuqc0kaacBMQCLcBGAsYHQ/s320/popup.PNG)](https://1.bp.blogspot.com/-P--PzZVNvQI/Xd6TwbTyF1I/AAAAAAAABzc/1z4gvn2ZljI_Pk5x6U7WLDuqc0kaacBMQCLcBGAsYHQ/s1600/popup.PNG)

## Een simpel VBScript maken

In deze tutorial ga ik laten zien, hoe je een simpel virus maakt.  

Het is niet gevaarlijk, maar wel grappig.  

Wat ons virus gaat doen is een melding laten zien met de tekst: "Your computer has been hacked, press OK to accept!". Deze melding is niet weg te klikken, en heeft maar een knop: "OK"

Voor deze tutorial, gebruiken we de taal VBScript.    
Ik ga ervan uit dat je al een code-editor hebt, anders vind je [hier](https://blog.geheimesite.nl/2019/11/brackets-installeren.html) een tutorial over hoe je Brackets download. Ook ga ik ervan uit dat bestandsnaam extensies aanstaat, zo niet, kun je [hier](https://blog.geheimesite.nl/2019/11/zo-zet-je-bestandsnaam-extensies-aan-in.html) een tutorial vinden.  
  
## Stap 1: Script aanmaken

Open Brackets, en maak een nieuw bestand aan, geef het een leuke naam, maar zorg wel dat het eindigt op .vbs (dit is de bestandsnaam extensie)  
  
## Stap 2: Schrijf het script

Nu is het zaak om het script te schrijven. Hieronder zie je de code, neem die over in Brackets, en sla het bestand op.  

``` 
do  
x=msgbox("Your computer has been hacked, press OK to accept!",0+16,"Critical Message")  
loop  
```  

In dit script staat 0+16 voor het type melding (promt, ja/nee, cancel/Ok, OK) en "Critical Message" voor de titel. Verder zie je de tekst van het bericht.  
De loop aan het einde zorgt ervoor dat de melding  box niet gesloten kan worden.  
  
## Stap 3: Testen
Dubbel klik op het bestand om het te openen. Als het goed is zou je zoiets moeten zien:  
  
[![](https://1.bp.blogspot.com/-P--PzZVNvQI/Xd6TwbTyF1I/AAAAAAAABzg/8xZo5Fampek22XHsF1CvyV6GQAg71gWhgCEwYBhgL/s640/popup.PNG)](https://1.bp.blogspot.com/-P--PzZVNvQI/Xd6TwbTyF1I/AAAAAAAABzg/8xZo5Fampek22XHsF1CvyV6GQAg71gWhgCEwYBhgL/s1600/popup.PNG)

## Stap 4: Iemand pranken!

Laat iemand schrikken door het bestand stiekem op zijn computer te zetten als hij niet kijkt, en het te openen! (Vertel daarna wel dat jij het was, en hoe je het uitzet. Dat staat hieronder)  
  
## Het virus uitschakelen

Open taak beheer door op CTRL+ALT+DEL te klikken, en klik op "Microsoft @ Windows Based Script" klik nu op de knop "End Task" rechtsonder.  

[![](https://1.bp.blogspot.com/-d6NoeqS2I4I/Xd6Z8jfaIQI/AAAAAAAABzo/syQL7MzDC_Y1okmTHoq93VYAkKCRbGBdQCLcBGAsYHQ/s640/taakbeheer.png)](https://1.bp.blogspot.com/-d6NoeqS2I4I/Xd6Z8jfaIQI/AAAAAAAABzo/syQL7MzDC_Y1okmTHoq93VYAkKCRbGBdQCLcBGAsYHQ/s1600/taakbeheer.png)
  
Ik hoop dat dit leer vol was,  
Veel codeer plezier,  
Robin
