---
title: 'Websites bouwen, hoe moet dat? '
date: 2020-02-29T04:00:00.004-08:00
draft: false
url: /2020/02/websites-bouwen-hoe-moet-dat.html
tags: 
- webdesign
---

![HTML icon](https://1.bp.blogspot.com/-8BVsGTCTpJA/XfSzOqIHv3I/AAAAAAAAB1c/onYrjjqMvvAr-hi77NCpvBJzAi2JzCUNgCLcBGAsYHQ/s200/Untitled.png)

**Een tutorial over het bouwen van je eerste website**  

Veel mensen vinden het knap als je zegt dat je een website hebt gemaakt, zonder  
ontwerpprogramma's en die onzin, gewoon met code. Maar dat is helemaal toch niet zo lastig?  
  
In deze tutorial bouw je je eerste website, daarvoor gebruiken we de talen HTML (HyperText Markup Language), CSS (Cascading StyleSheets) en een beetje JS (JavaScript). Ik ga het proberen makkelijk te houden, maar ik zal er ook blauwe vakken in zetten, daarin ga ik verder op in de code en theorie.  
  
_Ik verwacht dat je [Brackets al hebt gedownload](/2019/11/brackets-installeren.html), en [bestandnaamextensies aan staan](/2019/11/zo-zet-je-bestandsnaam-extensies-aan-in.html). Is dat niet het geval, bekijk daar dan mijn tutorials over._
  
**Laten we beginnen!**  
Ik zal dit onderwerp over meerdere blogposten verspreiden, we gaan hier leren hoe we een simpele homepage, en over-mij pagina gaan maken.  
  
Open Brackets, en typ het volgende:  
  
```html
<!DOCTYPE html>  
<html>  
    <head>
        <title>Coole website!</title>  
    </head>  
  
    <body>  
        <h1>Mijn eerste website!</h1>  
    </body>  
</html>
```  

Sla dit bestand op als `index.html`, en navigeer naar het bestand.  
Het bestand zou een chrome, firefox of IE/Edge logo moeten hebben:  
  
![Bestanden met verschillende browsericoontjes op mijn bureaublad](https://1.bp.blogspot.com/-00Ro7bVwLzk/XfSrhjOYRBI/AAAAAAAAB00/ORB72UgpruQsEPXSKNNI_mp7M8To5bm5gCLcBGAsYHQ/s1600/Untitled.png)

Open het bestand door er dubbel op te klikken, en je zou dit moeten zien:  

{{< figure src="https://1.bp.blogspot.com/-sOZz53EtcLE/XfSsG4i2V_I/AAAAAAAAB08/K9hzyVWBGbgMKrbBq3_Z-iJnDz7m8r4lQCLcBGAsYHQ/s1600/Untitled.png" alt="Je eerste website!" >}}
  
Dit is het begin, maar hoe werkt die code nou?  
Kort gezegd werkt het zo:  
  
1. De webpagina die je zojuist hebt gemaakt bestaat uit blokken met een duidelijk begin en einde, waarvan het einde is gemarkeerd met een `/`
2. De blokken staan onder elkaar, maar kunnen ook in elkaar staan. Als blokken in elkaar staan, heet dat nesten.  
3. In geneste blokken kunnen ook blokken onder elkaar staan, neem bijvoorbeeld `<head>`:  
Staat in `<html>` (genest), maar ook op `<body>` (gestapeld)  
4. De blokken heten **Elementen**  
5. De tekst die het begin en eind van een element weergeven heten **tags**. Zo is `<head>` een **begintag** en `</head>` een **eindtag**.  
  
Hieronder zie je wat de elementen doen:  

{{< figure src="https://1.bp.blogspot.com/-ObuqAv61jBI/XfSwYGfNxcI/AAAAAAAAB1I/JHiqDjLUXW8XYpwcFPuSKVAS-Tl3sEjzACLcBGAsYHQ/s1600/werking.png" alt="De werking van de elementen" >}}

Laten we de webapgina eens invullen met wat nuttige informatie!  
Ik maak in dit voorbeeld een website, voor een zogenaamd bedrijf, dat websites maakt.  
Opeen Brackets weer, en typ het volgende: (Voel je vrij om je eigen inhoud toe te voegen)  

```html
<!DOCTYPE html>  
<html>
    <head>  
        <title>Robin Boers | Web Design</title>  
    </head>
    <body>  
        <header>  
            <h1>Robin Boers | Web Design</h1>  
        </header>  
  
        <h2>Welkom op mijn website!</h2>  
  
        <p>Hallo, ik ben Robin Boers, ik ben bijna 13, en ik maak websites.<br> 
           Wil je ook een website? Neem dan contact met me op via: robin@geheimesite.nl</p>  
  
    </body>  
</html>
```  

Open het bestand weer, of (als je de webbrowser nog open hebt staan) klik op {{< kbd CTRL >}} + {{< kbd r >}} (dat staat voor refresh)  
Dit zou het volgende resultaat moeten geven:  

{{< figure src="https://1.bp.blogspot.com/-f1GsoTvPSgM/XfSywX42N8I/AAAAAAAAB1U/e7FflpAcwA4JH_e-oXKZmSnoJD-U3HihwCLcBGAsYHQ/s1600/Untitled.png" alt="Het resultaat van ons harde werk" >}}

Allemaal wel leuk en aardig, maar hoe werkt dit nou weer??  
Geen nood, hieronder staat weer een uitleg, met wat alle elementen doen.  
  
{{< figure src="https://1.bp.blogspot.com/-2l8ZR2rTimU/XfS3lfKqHGI/AAAAAAAAB1o/2sSaCUinlm8Fe8ZQs5idrs_f7-rrOb7WwCLcBGAsYHQ/s1600/werking.png" alt="De werking van de code van net" >}}

Gefeliciteerd! Je hebt zojuist een webpagina gemaakt, en ingevuld met informatie!

Wil je meer informatie over het bouwen van websites? Bekijk dan dit boek eens: [Coderdojo Nano - Bouw je eigen website](http://www.nano-tips.com/). Met dit boek heb ik de eerste versie van mijn website gemaakt. Ook is het nuttig om [w3schools.com](https://w3schools.com/) eens te raadplegen. Het is een enorme site, met veel informatie. Er zit alleen 1 nadeel aan: het is Engels...

Dit was het voor deze tutorial.

Ik hoop dat je hem nuttig vond.

Blijf creatief,

Robin
