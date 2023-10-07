---
title: "Deze maand: Okt 2023"
date: 2023-10-07T10:55:53+01:00
draft: false
tags: 
- status update
- leestips
---

Het is weer een hele tijd geleden dat ik op mijn blog heb gepost. Het probleem is dat ik voor mezelf een soort mentaal block heb. Ik wil eigenlijk alleen maar goede kwaliteit dingen publiceren: goed onderbouwde betogen of interessante verhalen. Het resultaat is alleen dat ik nu dus helemaal niks post omdat ik zelf mijn eigen kwaliteitsminimum niet haal.

Anyways.

## Grape

Ik heb een klein beetje verder gewerkt aan mijn eigen programmeertaal genaamd Grape. Ik heb besloten te rewriten in Elixir, omdat ik het een fijnere taal vindt dan Python. Ik merkte dat ik de hele tijd aan het vechten was tegen Python, in plaats van daadwerkelijk iets te maken. Recursion limits, vervelende syntax, recursion limits en nog meer recursion limits.

Verder ben ik er ook nog niet uit of ik wil compilen of interpreten. Het heeft beide z'n perks:

- Interpreten heeft het voordeel dat ik een REPL/shell kan hebben, wat ik eigenlijk wel wil. Ook kan je makkelijk scripts schrijven en verspreiden. Het nadeel is echter dat je dan een interpreter hebt die op de Erlang VM runt. Dat betekent dat een gebruiken zowel Erlang, als Elixir, als Grape moet installeren.

- Compilen heeft het voordeel dat het sneller en cooler is. Het is een uitdaging en een kans om iets nieuws te leren. Daarnaast kan je de binaries die het produceert makkelijk op andere computers runnen. Ik denk na over LLVM, maar om eerlijk te zijn heb ik hier dus echt 0 verstand van, en werkt het parsen van de AST nog niet eens goed.

## Website

Verder heb ik wat achtergrondwerk gedaan aan mijn website. Ik denk nog steeds na over een HTML-only mirror, maar ik bedacht me dat het misschien wel interessant is om een systeem te maken dat Markdown files ook gelijk omzet naar Gopher en Gemini files. Je kan dan een systeem maken waarmee je één repo hebt met de content van je site, en die dan published naar een aantal verschillende platformen (gem.geheimesite.nl, go.geheimesite.nl en ht.geheimesite.nl).

Verder heb ik ook nagedacht over mijn domeinnaam. Ik wil misschien een wat kortere domeinnaam registreren[^1], die ook iets meer bij mij past. `geheimesite.nl` is cool, maar ik heb het in 2017 bedacht en ik weet niet of het nog super goed bij me past. Ik zat te denken aan een wiskundige, natuurkundige of scheikundige pun, of een woordgrapje dat met programmeren te maken heeft. Een variatie op mijn naam vind ik eerlijk gezegd een beetje saai.

Tot slot heb ik een tijdje geleden gepost over het open-sourcen van mijn site. Ik vind zelf dat de meeste software open-source zou moeten zijn, en hoewel de source code van mijn website _openbaar_ is, is het momenteel technisch gezien niet _open source_. Ik heb namelijk nog steeds alle copyright over de code van mijn website. Het probleem voor mij is dat ik het prima vind als iemand een individueel stukje code van mijn website gebruikt. De code voor het menu, of de API backend ofzo. Ik wil alleen niet dat iemand letterlijk mijn website copy-paste en alleen de inhoud aanpast.

Ik weet nog steeds niet helemaal wat ik ermee aan moet. Ik heb wel besloten dat ik in ieder geval de content in een andere repository ga hosten, en die dan beschikbaar maak onder een Creative Commons licentie. Ik twijfel wel nog een beetje tussen een CC-BY en publiek domein.

## Waarom smartphones?

Ik stuitte afgelopen week op [een artikel van Adrien Plazas](https://adrienplazas.com/blog/2023/08/26/one-device-to-do-it-all.html) over hoe hij zijn smartphone vervangt met een heleboel specifiekere "tools", zoals een papieren agenda, horloge, iPod etc. Het zette me aan het denken. Tegenwoordig doet onze smartphone bijna alles, en dat vinden we heel normaal. Maar zijn soms veel specifiekere tools niet efficiënter?

## Interessante posts uit mijn RSS reader

- [Evan Hahn: **How big is a kilobyte?**](https://evanhahn.com/how-big-is-a-kilobyte/)
- [Kev Quirk: **“Thing” Is the Worst Word in the English Language**](https://kevquirk.com/thing-is-the-worst-word-in-the-english-language)
- [Herman: **The Frustration Loop**](https://herman.bearblog.dev/the-frustration-loop/)
- [Drew DeVault: **Social media and "parasocial media"**](https://drewdevault.com/2023/06/30/Social-and-parasocial-media.html)
- [Kev Quirk: **Stuck in the Chicken Coop 😂**](https://kevquirk.com/stuck-in-the-chicken-coop)
- [Drew DeVault: **AI crap**](https://drewdevault.com/2023/08/29/2023-08-29-AI-crap.html)
- [Ava Zeldman: **Shmile**](https://avazeldman.com/2023/08/31/shmile/)

## Coole dingen die ik online vond

- [Radio Garden](https://radio.garden)
- [rawtext.club](https://rawtext.club)

[^1]: Sidenote: let op met domeinnamen registeren die eindigen op `.io`. Zie [Criticism on .io domains](https://indieweb.org/ccTLD#io_Criticism) op die IndieWeb wiki.

