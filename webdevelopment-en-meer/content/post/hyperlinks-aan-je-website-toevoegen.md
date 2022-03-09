---
title: 'Hyperlinks aan je website toevoegen'
date: 2020-02-29T04:01:00.000-08:00
draft: false
url: /2020/02/hyperlinks-aan-je-website-toevoegen.html
tags: 
- webdesign
---

**Een tutorial over het bouwen van je eerste website**  
Veel mensen vinden het knap als je zegt dat je een website hebt gemaakt, zonder  
ontwerpprogramma's en die onzin, gewoon met code. Maar dat is helemaal toch niet zo lastig?  
  
In deze tutorial bouw je je eerste website, daarvoor gebruiken we de talen HTML (HyperText Markup Language), CSS (Cascading StyleSheets) en een beetje JS (JavaScript). Ik ga het proberen makkelijk te houden, maar ik zal er ook blauwe vakken in zetten, daarin ga ik verder op in de code en theorie.  
  
_Ik verwacht dat je Brackets al hebt gedownload, en bestandnaamextensies aan staan. Is dat niet het geval, bekijk daar dan mijn tutorials over. Je vind ze hier: [Een ontwikkelomgeving opzetten](https://blog.geheimesite.nl/search/label/ontwikkelomgeving_opzetten)_  
  
**Hyperlinks**  
In deel 1 van deze tutorial heb ik je laten zien hoe je de homepage van je website kan bouwen. (Heb je dat nog niet gedaan? Check dan eerst deze post uit: [Websites bouwen, hoe moet dat?](https://blog.geheimesite.nl/2020/02/websites-bouwen-hoe-moet-dat.html)) Maar, een website bestaat niet uit 1 pagina. Ik wil ook nog een over-mij pagina, en een pagina waarop mijn projecten staan.  
[![Afbeeldingsresultaat voor hyperlink"](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Hyperlink-Wikipedia.svg/1200px-Hyperlink-Wikipedia.svg.png)](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Hyperlink-Wikipedia.svg/1200px-Hyperlink-Wikipedia.svg.png)Dit is waar **hyperlinks** tevoorschijn komen.  
Hyperlinks zijn die blauwe klikbare dingen, die je op websites ziet, die je van website naar website brengen. Hyperlinks zijn het hart van het internet. Zonder hyperlinks kun je er niks mee.  
  
Maar ondertussen denk jij: 'Robin loopt maar wat te lullen, maar wanneer, en hoe gebruik je nou hyperlinks?  
  
In dit geval gaan we hyperlinks gebruiken in de navigatie van de website, het menu.  
  
Maak een nieuwe HTML pagina aan. Dit doe je door het bestand `index.html` in Brackets te openen, en dan bovenin op `file / bestand` te klikken. Klik daarna op `Opslaan als / Save as`. Typ in over-mij.html, en klik op `Opslaan / Save`. Als het goed is heb je nu 2 bestanden: `index.html` en `over-mij.html`. Open het `index.html`. En typ dit:  
  
  
```
<!DOCTYPE html>  
<html>  
  
    <head>  
  
        <title>Robin Boers | Web Design</title>  
  
    </head>  
  
    <body>  
  
        <header>  
  
            <h1>Robin Boers | Web Design</h1>  
  
      <nav>  
  <ul>  
      <li>Home</li>  
      <li><a href="over-mij.html">Over mij</a></li>  
  </ul>  
            </nav>
``````
  
        </header>  
  
        <h2>Welkom op mijn website!</h2>  
  
        <p>Hallo, ik ben Robin Boers, ik ben bijna 13, en ik maak websites.<br>  
        Wil je ook een website? Neem dan contact met me op via: robin@geheimesite.nl</p>  
  
    </body>  
  
</html>  

```  
  
Open hierna het bestand `over-mij.html`, en typ dit:  
  
`<!DOCTYPE html>  
  
<html>  
  
    <head>  
        <title>Over mij - Robin Boers | Web Design</title>  
    </head>  
  
    <body>  
        <header>  
            <h1>Robin Boers | Web Design</h1>  
    <nav>  
<ul>  
    <li><a href="index.html">Home</a></li>  
    <li>Over mij</li>  
</ul>  
            </nav>  
        </header>  
  
        <h2>Over mij</h2>  
  
        <p>Hallo, ik ben 13 jaar, en ik maak websites. Ik heet Robin en toen ik dit schreef zat ik in de brugklas.<br>  
Ik heb een YouTube kanaal, dat Robin Boers heet, waar ik video's maak over mij intresses. En ik heb een blog, dat je nu leest</p>  
  
    </body>  
  
</html>`  
  
Open nu het bestand `index.html` in de browser, en bekijk het resultaat.  
Als het goed is zou je dit moeten zien:  

[![](https://1.bp.blogspot.com/-e5Weh9v9tMo/Xlo6NEiqq-I/AAAAAAAAGZk/MpEwhpN6mU8cmx_-lyrghbR8WFEHIWUkQCLcBGAsYHQ/s640/Capture.PNG)](https://1.bp.blogspot.com/-e5Weh9v9tMo/Xlo6NEiqq-I/AAAAAAAAGZk/MpEwhpN6mU8cmx_-lyrghbR8WFEHIWUkQCLcBGAsYHQ/s1600/Capture.PNG)

De homepagina

  
Klik je dan op het linkje "Over mij", dan zie je dit:  
  

[![](https://1.bp.blogspot.com/-Qrq6CG2H_5E/Xlo6NLEWFII/AAAAAAAAGZg/F4Yk8sdWawg84NBxb-1YwCD7qmYHLj85gCEwYBhgL/s640/Capture2.PNG)](https://1.bp.blogspot.com/-Qrq6CG2H_5E/Xlo6NLEWFII/AAAAAAAAGZg/F4Yk8sdWawg84NBxb-1YwCD7qmYHLj85gCEwYBhgL/s1600/Capture2.PNG)

De over-mij pagina

  
Maar hoe werkt die code nou eigenlijk?  
Het is best simpel: We maken een navigatievak met het element <nav>, daarna plaatsen we in dat vak een lijstje met <ul>. <ul> staat voor **U**nsorted **L**ist, een lijst zonder nummers. Daarna maken we **L**ist **I**tems met <li>. In de **L**ist **I**tems maken we hyperlinks met <a>.  
  

[![](https://1.bp.blogspot.com/-rKkaPNOlhGU/XlpKDrEB12I/AAAAAAAAGZ0/MFTpm7niYRonjdYWgaulbK49jhss9It4QCLcBGAsYHQ/s640/Capture3.PNG)](https://1.bp.blogspot.com/-rKkaPNOlhGU/XlpKDrEB12I/AAAAAAAAGZ0/MFTpm7niYRonjdYWgaulbK49jhss9It4QCLcBGAsYHQ/s1600/Capture3.PNG)

De werking van het menu

  
Een hyperlink werkt zo:  
  

[![](https://1.bp.blogspot.com/-eiri35QSMlQ/XlpPYZrkbXI/AAAAAAAAGaA/XHv3gGmTFoER8Azpmaf7xizN7GEJFmcqwCLcBGAsYHQ/s640/Capture4.PNG)](https://1.bp.blogspot.com/-eiri35QSMlQ/XlpPYZrkbXI/AAAAAAAAGaA/XHv3gGmTFoER8Azpmaf7xizN7GEJFmcqwCLcBGAsYHQ/s1600/Capture4.PNG)

  
Gefeliciteerd! Je hebt zojuist je eerste hyperlink gemaakt!  

Wil je meer informatie over het bouwen van websites? Bekijk dan dit boek eens: [Coderdojo Nano - Bouw je eigen website](http://www.nano-tips.com/). Met dit boek heb ik de eerste versie van mijn website gemaakt. Ook is het nuttig om [w3schools.com](https://w3schools.com/) eens te raadplegen. Het is een enorme site, met veel informatie. Er zit alleen 1 nadeel aan: het is Engels...

  

Dit was het voor deze tutorial.

Ik hoop dat je hem nuttig vond.

Blijf creatief,

  

Robin