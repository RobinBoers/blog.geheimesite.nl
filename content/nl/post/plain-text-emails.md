---
title: "Ik gebruik plain-text email en dat zou jij ook moeten doen"
date: 2023-01-21T15:23:50+01:00
tags: 
- email
---

Ik gebruik plain-text email en jij zou dat ook moeten doen. Waarom? En wat is het verschil tussen plain-text en HTML email?

Om te beginnen zijn er twee soorten email: plain-text en HTML. Het verschil is vrij simpel: HTML emails bevatten HTML en plain-text emails niet. HTML emails worden vooral gebruikt voor marketing. Het is hoe dit soort emails werken:

{{< figure src="/images/carre-email.png" alt="Een marketing email van Carré voor het Wereldkerstcircus" caption="Typische marketing mail" >}}

HTML emails hebben echter een aantal nadelen:

- Ze bevatten heel veel dubbele data (omdat voor elke start-tag er ook een eind-tag moet zijn die exact hetzelfde is maar een slash extra bevat).
- Ze zijn het nummer 1 security probleem in email clients.
- Ze maken tracking via plaatjes mogelijk.

Het alternatief is plain-text emails. Plain-text is gewoon wat het zegt: je verstuurt alleen tekst zonder enige opmaak of fancyheid. Je verliest hiermee wel een aantal voordelen van HTML, met name inline plaatjes, kleurtjes, dikgedrukte woorden en links.

Ik ben echter van mening dat de nadelen van het niet gebruiken van HTML heel erg tegen de voordelen op wegen. Inline plaatjes worden bijna nooit gebruikt omdat de meeste mensen het plaatje als bijlage versturen. Nadruk leggen hoeft niet per definitie met dik- of schuingedrukte tekst, het kan ook met tekst alleen:

> Ik ben <span style="font-weight: bolder; font-size: 109%">heel boos</span>.

...wordt:

> Ik ben \*heel boos\*.  
> Of: ik ben HEEL BOOS.

Zelfde effect.

Tot slot links in emails. In plaats van het sturen van een link op deze manier:

> Klik op [deze link](https://geheimesite.nl) om naar mijn website te gaan.

...kan je de link zelf ook in de email zetten:

> Ga naar deze link om mijn website te bezoeken: https://geheimesite.nl

De meeste email clients maken een link die ze in een plain-text email zien automatisch klikbaar, en daarnaast is het nog veiliger ook: je kan zien waar de link naar verwijst voordat je er op klikt[^1]!

Daarnaast zijn plain-text emails ook nog eens beter toegankelijk. Stel je voor dat je dyslexie hebt en een speciaal lettertype zoals [OpenDyslexic](https://opendyslexic.org) gebruikt zodat je dingen beter kan lezen. In een HTML email is eigenlijk altijd het lettertype al ingesteld, en hoe het is ingesteld verschilt ook nog eens per email client die gebruikt is om de email te versturen. Het is dus moeilijk om je emails met OpenDyslexic te lezen.

Als je plain-text zou gebruiken zou je gewoon het lettertype van de tekst (want het is alleen maar tekst) aan kunnen passen en off you go. Ook is plain-text veel makkelijker voor te lezen door screenreaders, _want het is alleen maar tekst._ Bij een HTML email zou de screenreader eerst nog moeten uitvogelen welk stuk van de HTML code de daadwerkelijke tekst bevat, en dat gaat nog weleens fout.

En dan als laatste: vaak zien plain-text emails er beter uit. In HTML emails komt het nog wel eens voor dat het lettertype halverwege verandert[^2]:

{{< figure src="/images/messed-up-email.png" alt="Een email met messed-up font-sizes" >}}

Genoeg redenen dus om plain-text te gebruiken in plaats van HTML. Helaas is echter HTML in veel email clients nog steeds de default :(

Je kan het wel veranderen als je wil. Vaak kan je het in de instellingen van je email client vinden (meestal onder het kopje "Compose" of dergelijke). Je kan op [deze website van sourcehug](https://useplaintext.email/#other-clients) handleidingen vinden voor bijna elke populaire email client.


[^1]: In een HTML email kan je ook een link eruit laten zien als een andere link. Dit wordt veel gebruikt in phishing, waarbij de gebruiker _denkt_ dat hij/zij naar Google gaat, maar daadwerkelijk naar een shady website gaat:

    > Gebruik deze link om je wachtwoord te resetten: [https://google.com/account](https://geheimesite.nl)

[^2]: Bijvoorbeeld omdat iemand de tekst heeft gekopieerd uit een ander document of een website en de opmaak heeft mee-gekopieerd.

