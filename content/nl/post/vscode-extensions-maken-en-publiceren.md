---
title: 'VSCode extensions maken en publiceren'
date: 2021-09-10T11:23:00.001-07:00
draft: false
url: /2021/09/vscode-extensions-maken-en-publiceren.html
tags: 
- tools
---

Hello world! Ik heb dus vorige week een eigen VSCode extension gemaakt en gepubliceerd. Met VSCode extensions kan je functionaliteit aan de code editor van Microsoft, Visual Studio Code, toevoegen. Ik heb een extension gemaakt die een color theme bevat. Daarmee kan je de interface van VSCode themen.

Maar dat op zich was niet zo moeilijk. Ik heb gewoon mijn favoriete color theme, Frontend Delight, in een JSON bestand gegoten, en tadaaaa! Een VSCode extension!

Oke oke, het was wel iets meer werk dan dat. Je moet eerst een extension aanmaken met yo code en dan het default theme importeren en aanpassen. De extension zelf is al een tijdje beschikbaar op mijn GitHub profiel.

Waar deze post echt over gaat is het publiceren van die extension in de VSCode Marketplace en Open-VSX. De marketplace is de officiële plek van Microsoft om extensions te publiceren. Open-VSX is echter een open-source project van Eclipse als alternatief voor de Marketplace. Het wordt bijvoorbeeld gebruikt in forks zoals VSCodium of VSCode OSS.

Om een extension te publiceren in de VSCode marketplace moet je eerst een Azure DevOps account aanmaken. In de officiële documentatie van Visual Studio Code staat dat je een organisation moet aanmaken. Dat is in mijn ervaring helemaal niet nodig. Je moet gewoon op [dev.azure.com](http://dev.azure.com) inloggen (Ik heb met mijn GitHub account ingelogd).

Je moet dan een Personal Access Token aanmaken. Dit kan vanuit de DevOps omgeving. Nadat je een token hebt aangemaakt kan je het gebruiken om in te loggen in vsce. Dat staat voor **V**isual **S**tudio **C**ode **E**xtensions en is een commandline tool om extensions te maken en publiceren.

Je kan als je bent ingelogd in vsce je extensions publiceren met het command

```bash
vsce publish
```

En dan zou je extension na een paar minuten live moeten zijn op: [https://marketplace.visualstudio.com/items?itemName=_Publisher_._extension-name_](https://marketplace.visualstudio.com/items?itemName=Publisher.extension-name)

Publiceren op Open-VSX is echter een ander verhaal. Je moet eerst een account aanmaken op [open-vsx.org](http://open-vsx.org). Als je dat gedaan hebt moet je een Eclipse account aanmaken, en inloggen met je Eclipse account in je Open-VSX account om de "Eclipse Foundation Open VSX Publisher Agreement" te accepteren. Mooi woord voor galgje :D

Als je dan een account up-and-running hebt kan je een token aanmaken. Dit proces is gelukkig veel simpeler dan bij de officiële marketplace. Je hoeft alleen op "Tokens" te klikken en er een toe te voegen. Met dat token kun je vervolgens je extension publiceren vanaf de commandline. Open-VSX gebruikt daarvoor een tool genaamd ovsx.

Maar voor je je extension publiceerd moet je eerst een namespace aanmaken en claimen. Een namespace is een soort confusing manier van Open-VSX om extensions te publiceren. Ik denk dat het voor bedrijven/organisaties bedoeld is, maar het is echt weird.

Je moet dus eerst een namespace aanmaken. Ik heb de mijne RobinBoers genoemd, aangezien dat ook mijn username is. De namespace moet hetzelfde zijn als de publisher in package.json. Je doet dit ook via de CLI:

```bash
npx ovsx create-namespace RobinBoers -p TOKEN_HERE
```

Als je dat dan gedaan heb kan je EINDELIJK je extension publiceren met dit command:

```bash
npx ovsx publish -p TOKEN_HERE
```

Na het publiceren moet je dan een issue op de GitHub page van Open-VSX aanmaken om je namespace te claimen. Tot dat issue is goeggekeurd staat er een warning boven je extension.  

Dus, dat duurde lang. Maar, als je intresse hebt kan je dus mijn extensions hier vinden:

[https://marketplace.visualstudio.com/items?itemName=RobinBoers.frontend-delight](https://marketplace.visualstudio.com/items?itemName=RobinBoers.frontend-delight)

[https://open-vsx.org/extension/RobinBoers/frontend-delight](https://open-vsx.org/extension/RobinBoers/frontend-delight)

\- Robin
