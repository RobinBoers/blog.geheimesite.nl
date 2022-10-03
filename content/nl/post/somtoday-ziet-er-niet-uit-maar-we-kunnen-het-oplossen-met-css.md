---
title: "Somtoday ziet er niet uit. Maar we kunnen het oplossen met CSS."
date: 2022-03-25T11:51:48+01:00
draft: false
tags: 
- webdesign
---

Kennen jullie Somtoday? Voor de mensen die het niet kennen: het is een leerlingvolgsysteem voor het voortgezet onderwijs. En het is toevallig ook wat mijn school, het Lyceum Schravenlant, gebruikt.

Som is noice. Je kan er je cijfers, huiswerk en leermiddelen zien. Maar ik zie ook een aantal verbeterpuntjes. Somtoday heeft voor de docenten een uitgebreid dashboard waarin ze het huiswerk kunnen inplannen, cijfers kunnen invoeren, absenties kunnen bijhouden etc.

{{< figure src="/images/somtoday-docent.png" alt="Somtoday Docent: een mooie moderne Angular app" caption="Somtoday Docent: dit is wat docenten zien" >}}

Maar leerlingen en ouders zien deze website uit het jaar 1900. Oke, dat is misschien een beetje overdreven, maar het doet me wel serieus denken aan websites uit 2000.

{{< figure src="https://user-images.githubusercontent.com/60298132/160108610-64e19e60-3be6-47ea-ba25-ae7918243f4d.png" alt="Somtoday voor leerlingen en ouders: een site die eruitziet alsof hij uit een tijdmachine komt" caption="Somtoday voor leerlingen en ouders: een site die eruitziet alsof hij uit een tijdmachine komt" >}}

Er zijn heel veel dingen die me irriteren aan dit ontwerp. Om er een paar te noemen:

- De kleuren zijn verschrikkelijk
- De font-size is niet ideaal
- Mijn lelijke hoofd staat bovenaan
- Er is permanent een badge met het nummer 3 bij de berichtenbox, ook al het ik al mijn berichten gelezen

Zoals mijn lezers waarschijnlijk weten ben ik een webdesign freak die weet hoe CSS werkt. Dus heb ik een userstyle geschreven die je kan installeren om het leerling/ouderpaneel iets beter te maken. Het is gebaseerd op de look van Somtoday Docent, en ziet er zo uit:

{{< figure src="https://user-images.githubusercontent.com/60298132/160105979-bb93addb-e947-4378-9880-b304e708bee1.png" alt="Verbeterde versie van Somtoday voor leerlingen en ouders" caption="Verbeterde versie van Somtoday voor leerlingen en ouders, gemaakt met wat simpele CSS regels" >}}

Als je wil kan je mijn userstyle [op mijn GitHub account](https://gist.github.com/RobinBoers/c95ea8c4181bcfcd9957bf730effecbb) vinden.

Userstyles kan je installeren met [Stylus](https://addons.mozilla.org/en-US/firefox/addon/styl-us/). Je kan in de extension mijn CSS code plakken en als het goed is zou dan je Somtoday er veel beter uit moeten zien :)

**Ik hoop heel erg dat een medewerker van Somtoday dit toevallig leest. Zo ja, zou je me in contact willen brengen met de designers / ontwikkelaars van Som? Mijn emailadres is [robin@geheimesite.nl](mailto:robin@geheimesite.nl) :)**
