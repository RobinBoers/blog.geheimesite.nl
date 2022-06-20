---
title: 'Datapacks in Minecraft'
date: 2020-06-25T03:23:00.000-07:00
draft: false
url: /2020/06/datapacks-in-minecraft.html
tags: 
- datapacks
- minecraft
---

Ik ben met een vriend bezig om een ‘mod’ voor Minecraft te maken. Officieel is het geen mod, maar een combinatie van rescourcepacks en datapacks. Een datapack is een soort rescourcepack, maar inplaatsvan de shaders, textures en geluiden, kun je er de crafting recipes, structures en advancements mee aanpassen.

[Het Minecraft logo](https://1.bp.blogspot.com/-wTEuGOdOumg/XvJLCDE0rWI/AAAAAAAAHqk/SYRiZrNyg8cpQae9nsbrxmLOhq8qceAtgCK4BGAsYHg/w151-h164/bc270c23058d513de5124ffea6bf9199af7a2370.png)

In datapacks heb je functions. Dit zijn bestanden, die commands bevatten, die je via de chat kunt oproepen. Al deze commands worden in dezelfde gametick uitgevoerd. Ook is er een loop fucntion. Deze wordt elke gametick uitgevoerd. Met datapacks kan je wat hele coole dingen maken. Ik en mijn vriend zijn bezig met een datapack (en rescourcepack) wat seizoenen, meer golems, en veel meer toevoegt. Vandaag ga ik je laten zien hoe je je vrienden kunt pranken met behulp van datapacks.

## 1: De spammer

Met behulp van dit grappige script kun je een random player laten spammen in de chat.

```mcfunction
execute as playernamehere run say wat_er_gespamd_moet_worden
```

## 2: Is it a bird, is it a plane?

Met dit leuke script kun je iemand op random momenten laten vliegen, door ze op een random tick levetation te geven.

```mcfunction
execute at @a as playernamehere run effect give @s levitation 100 1 true
```

## 3: Oof, HOT!!

Met dit grappige script laat je alle blokken onder iemands voeten in lava veranderen
  
```mcfunction
execute as playernamehere at @a run fill ~ ~-1 ~ ~ ~-1 ~ lava
```

Zorg ervoor dat je de code hierboven in de gameloop zet. Hier kun je een tutorial vinden over hoe je datapacks maakt:

Als je het leuk vind kun je ook een kijkje nemen naar de ‘mod’ die ik en mijn vriend Sean aan het maken zijn. Het heet The FRED Project (wat een afkorting is voor frederico) en is te vinden op mijn [GitHub account](https://github.com/RobinBoers/TheFREDProject)

\- Robin
