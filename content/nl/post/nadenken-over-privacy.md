---
title: "Nadenken over privacy"
date: 2023-02-07T10:15:06+01:00
tags: 
- privacy
- social media
- open-source
---

Ik ben bezig met het lezen van [This is how they tell me the world ends](https://www.bibliotheek.nl/catalogus/titel.434364606.html/this-is-how-they-tell-me-the-world-ends/). Er staat niet heel veel nieuwe of schokkende informatie in, maar het is toch nogal een eye-opener. Het boek gaat over hoe regeringen kritieke bugs in software (ookwel zero-days) kopen en exploiteren om toegang tot data te krijgen die ze niet hadden mogen hebben.

Ik heb nooit veel vertrouwen gehad in grote bedrijven en apps. Mijn informatica docente staat elke maandag voor de klas een futuritisch sprookje te vertellen over hoe apps en bedrijven ons leven zoveel makkelijker hebben gemaakt en hoe ons technologisch utopia te wachten staat in de toekomst. Ik ben zelf van mening dat dit een nogal naïef en ondoordacht standpunt is.

De bedrijven en apps zijn niet met slechte intenties gemaakt, maar uiteindelijk blijft het doel toch geld verdienen. En daarvoor verzamelen ze verschrikkelijk veel data. En ik denk dat de digitalisering ons zeker veel goeds heeft gebracht: denk aan initiatieven zoals Wikipedia. Toch denk ik dat soms de hele alles-moet-digitaal beweging niet zo in ons voordeel werkt. Voor het verzamelen en verwerken van al die data is verschikkelijk veel opslag en rekenkracht nodig. Daarnaast is de data die in databases staat vaak helemaal niet zo goed beveiligd en weet je niet wie er allemaal toegang tot hebben.

Het lijkt me een nachtmerrie als straks al onze data op onze smartphone staat. We hebben al geen inzicht op welke data er mee wordt verzameld en door welke bedrijven deze wordt opgeslagen en verwerkt. Het lijkt me dus al helemaal een slecht idee om daar onze identiteitskaart, betaalgegevens en privé-informatie aan toe te voegen.

Ik wil zelf kunnen bepalen welke data ik online zet, en alleen de data waarvan ik *kies* dat ik deze upload wil ik online hebben. Ik heb niks te verbergen, maar het voelt niet prettig om in grote databases te staan met super veel persoonsgegevens. Ik heb liever dat ik zelf de data beheer. Daarmee bedoel ik dat ik zelf bepaal wat ik wel en niet deel en waar en hoe het wordt opgeslagen. Ik ben al sinds 2021 bezig met het verplaatsen van mijn accounts en data naar plekken die ik zelf beheer.

Zo maakt dit blog nu gebruik van Hugo en GitHub Pages. Ik heb al mijn content als Markdown files op mijn laptop staan in een Git repo. Ik kan de Git repo nu makkelijk naar een andere code forge zoals Codeberg of GitLab verplaatsen en de site bij een andere provider deployen. Ik ben daardoor niet meer afhankelijk van Google/Blogger.

Mijn contacten staan op een lokale CardDAV server die ik op mijn laptop run en worden met een zelf-gehoste Git repo gebackupt. Als mijn laptop en telefoon op hetzelfde netwerk zijn worden mijn contacten automatisch gesynchroniseerd (via HTTPS, want ik heb mijn eigen SSL certificate gemaakt en geinstalled op mijn laptop en telefoon). Hierdoor kan ik zelf beheren hoe/waar de data wordt opgeslagen en heeft Microsoft geen toegang tot de persoonlijke gegevens van al mijn contacten.

Mijn wachtwoorden staan in een keyring ipv de Firefox passwordmanager en worden via diezelfde Git repo gebackupt/gesynct naar andere devices. De keyring is ge-encrypt met mijn Linux-userwachtwoord, dus zonder mijn wachtwoord kom je er niet in.  

Ik gebruik geen social media en alles dat ik wil posten plaats ik via mijn eigen website, waar mijn [profiel](https://geheimesite.nl/me) en [timeline](https://geheimesite.nl/neolog) te vinden zijn. Ik heb zelf controle over de opslag en verwerking van data (posts in dit geval) en heb deze met de open [IndieWeb](https://indieweb.org) standaarden genaamd [h-card](https://indieweb.org/h-card) en [h-entry](https://indieweb.org/h-entry) opgeslagen zodat ik het makkelijk kan uitwisselen met andere websites en kan verplaatsen naar een andere locatie.

Het is niet per se dat ik Google, Microsoft en Mozilla niet vertrouw. Het punt is dat ik nu zelf bepaal welke data ik openbaar maak en wie er toegang tot heeft. Daarnaast ben ik ook zelf volledig in controle over de data: ik kan het verplaatsen naar een andere plek (want alles is met [open standaarden](https://blog.geheimesite.nl/post/belang-van-open-standaarden/) opgeslagen) en bepalen wanneer het verwijderd wordt (en dan bedoel ik dus ook 100% verwijderd). En als nu mijn data gelekt wordt is het in ieder geval mijn eigen schuld.

Ik krijg van leeftijdsgenoten vaak te horen dat ze het gek vinden dat ik zo privacybewust ben. Ze vragen dan waarom ik "zo bang ben dat mijn data gestolen wordt". Ik denk dat het op twee dingen aankomt:

- Ik denk dat iedereen een fundamenteel recht op privacy heeft en ik vind dat dat beschermd moet worden.
- Ik vind dat ik eigendom moeten hebben van mijn eigen data.
- Ik vind het leuk om zelf de technische problemen op te lossen en systemen te beheren waarin mijn data staat.

Dus, hoe zit het met jullie (mijn lezers). Hoe denken jullie over privacy? Hebben jullie vragen of opmerkingen? Je kan een comment achterlaten :)
