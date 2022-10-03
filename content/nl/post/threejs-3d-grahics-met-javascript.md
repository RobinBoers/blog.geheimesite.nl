---
title: 'Three.js: 3D graphics met Javascript'
date: 2021-07-02T07:48:00.001-07:00
draft: false
url: /2021/07/threejs-3d-grahics-met-javascript.html
tags: 
- webgl
- javascript
- 3d
---

Ik heb de laatste 2 weken wat geëxperimenteerd met three.js

Three.js is een Javascript library om 3D objecten in je browser weer te geven met WebGL. Klinkt moeilijk, maar het betekent eigenlijk: je kan coole 3D stuff op websites maken. Voorbeelden daarvan kan je op de homepage van [threejs.org](http://threejs.org) vinden.

Maar je kan er naast coole 3D effecten ook games mee maken! Het is niet een game specifieke library, maar het is wel mogelijk. Gecombineerd met bijvoorbeeld ammo.js kan je best coole games maken. Ik ben zelf momenteel bezig met een space shooter (ik zal wel een blogje posten als ie af is).

Het eigenlijk best simpel. Je begint altijd met een scene, camera en renderer. Een scene is een groep 3D objecten.

Om dat scene te kunnen zien heb je een camera nodig. Dit is het perspectief waaruit je de 3D wereld ziet. Je hebt verschillende soorten camera's, maar degene die het meest wordt gebruikt is de perspective camera. Dit is gewoon het centraal perspectief wat je bij kunst hebt geleerd. De manier waarop mensen diepte zien.

Dan heb je een renderer nodig. Dit is het onderdeel wat de scene op het scherm laat verschijnen. Meestal wordt [WebGL](https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API) (een Javascript API voor het renderen van 2D en 3D graphics met de GPU) gebruikt, maar er zijn ook andere beschikbaar voor outdated browsers.  

En dan heb je: een leeg scherm! Ja dat klopt. We hebben namelijk nog geen 3D objecten aan ons scene toegevoegd. Een 3D object kan een ruimtelijk figuur zijn (zoals een piramide of prisma) of een [model](https://en.wikipedia.org/wiki/3D_modeling) wat is gemaakt in bijvoorbeeld blender. We kunnen ons object daarna aan ons scene toevoegen.

We hebben nu een scene met een object, maar het object is helemaal wit. Het probleem is dat we nog geen material hebben toegekend. Een material bepaalt hoe een object eruit ziet. Het meest simpele material is [MeshBasicMaterial](https://threejs.org/docs/?q=material#api/en/materials/MeshBasicMaterial). Dit material heeft geen licht nodig, maar er is ook geen diepte zichtbaar (het is flat). Je hebt ook andere materials:

*   [MeshStandardMaterial](https://threejs.org/docs/?q=material#api/en/materials/MeshStandardMaterial): het standaard material
*   [MeshPhongMaterial](https://threejs.org/docs/?q=material#api/en/materials/MeshPhongMaterial): voor glimmende objecten
*   [MeshToonMaterial](https://threejs.org/docs/?q=material#api/en/materials/MeshToonMaterial): hierdoor lijkt alles alsof het uit een stripboek komt

{{< figure src="https://1.bp.blogspot.com/-_8hxbezxXwU/YN8kHPOJ3BI/AAAAAAAAK6Q/akWuxrMsFoo0Znm9cRd0aLmbaAyixNBJQCLcBGAsYHQ/w640-h158/materials.png" alt="De materials die ik hierboven beschreef: Basic, Standard, Phong en Toon" caption="De materials die ik hierboven beschreef: Basic, Standard, Phong en Toon" >}}

Nu heb je een 3D object, maar het is nog helemaal donker. Dat komt omdat je nog geen lichten hebt toegevoegd. Je hebt veel verschillende soorten lichten. Een paar coole zijn:

*   [SpotLight](https://threejs.org/docs/index.html?q=light#api/en/lights/SpotLight): de naam zegt het al :)
*   [DirectonalLight](https://threejs.org/docs/index.html?q=light#api/en/lights/DirectionalLight): een lichtbron die zich gedraagt alsof hij oneindig ver weg is. De lichtstralen gaan parallel van elkaar. Vaak gebruikt om daglicht te simuleren.
*   [PointLight](https://threejs.org/docs/index.html?q=light#api/en/lights/PointLight): gedraagd zich als een lamp zou doen. Een punt waarvanuit lichtstralen in alle richtingen worden uitgezonden
*   [AmbientLight](https://threejs.org/docs/index.html?q=light#api/en/lights/AmbientLight): licht dat alle objecten in een scene gelijk belicht. Komt niet uit één richting, maar vanaf overal (en kan dus niet gebruikt worden om schaduwen te maken).  

En dan nu: je hebt een scene met een object! Ik hoop dat je dit een leuke blogpost vond.

\- Robin
