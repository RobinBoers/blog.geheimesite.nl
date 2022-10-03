---
title: 'GitHub API: dynamische projecten pagina'
date: 2021-08-26T07:10:00.001-07:00
draft: false
url: /2021/08/github-api-dynamische-projecten-pagina.html
tags: 
- webdesign
- javascript
- api
- github
---

Ik heb vandaag wat geëxperimenteerd met de [GitHub API](https://docs.github.com/en/rest). Een API is een manier om data uit te wisselen tussen verschillende stukken code. Ik kan met de code van mijn website dus de code van GitHub aanspreken via de API.

Als ik bijvoorbeeld data wil hebben over mijn eigen profiel, kan ik de GitHub API daarom vragen door een HTTP verzoek (request) naar deze URL te sturen:

```text
https://api.github.com/users/RobinBoers
```

Ik krijg dan een reactie (response) van de GitHub API, met daarin alle (publieke) informatie van mijn profiel. Op die manier kan ik ook mijn repos (repositories), followers, forks, starred repos etc. zien.

Ik heb de API gebruikt om alle repositories die niet gearchiveerd zijn op te halen en op mijn website weer te geven. Daardoor hoef ik niet iedere keer dat ik een project start mijn website aan te passen.

Ik hoop dat jullie deze korte post interessant vonden :)

\- Robin
