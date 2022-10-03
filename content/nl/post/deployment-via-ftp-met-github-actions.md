---
title: "Deployment via FTP met GitHub Actions"
date: 2022-04-10T10:51:23+02:00
draft: false
tags: 
- open source
- webdesign
- tools
---

Zoals je misschien gemerkt hebt heb ik recent mijn blog verhuisd van Blogger naar mijn eigen website. Dit zorgt ervoor dat ik in beheer ben van mijn eigen blog en was ook gelijk een goed excuus om het design eens een keer stevig aan te pakken. Mijn blog is open-source en kan je vinden [op GitHub](https://github.com/RobinBoers/blog). Zodra ik wijzigingen aanmaak op GitHub gaat er een tooltje genaamd [GitHub Actions](https://github.com/features/actions) runnen dat automatisch de nieuwe blogpost publiceerd. Het blog zelf wordt dan op [GitHub Pages](https://pages.github.com) gepubliceerd en dat heb ik vervolgens weer aan mijn eigen domeinnaam gekoppeld.

Zo wordt ook de [frontpage](https://nindo.geheimesite.nl) en [documentatie](https://docs.geheimesite.nl/nindo-phx) van Nindo met GitHub Actions gepubliceerd via GitHub pages. Het handige voor mij is dat ik minder stappen hoef te doen om dingen te publiceren. Ik pas het gewoon aan in mijn code editor, klik op publiceren en GitHub doet de rest. Sinds vorig jaar doe ik dat dus al voor een aantal projecten.

Er was echter een project waar ik veel aan werk, maar nog helemaal handmatig geupload moest worden: mijn website. Na elke wijziging moest ik die eerst naar GitHub pushen, dan mijn FTP programma openen, checken welke bestanden ik ookalweer had aangepast, inloggen en uploaden. Dit koste me vrij veel tijd in vergelijking met hoeveel tijd het kost om de wijzigingen zelf te maken.

Dus vandaag heb ik een GitHub Action opgezet die dit automatisch voor mij doet. Als ik nu mijn website update wordt hij automatisch via FTP geupload met behulp van deze action: [FTP Deploy](https://github.com/SamKirkland/FTP-Deploy-Action). Als je wil kan je het workflow file hier bekijken:

```yaml
name: Deploy website via FTP
on: 
  push:
    branches: [ master ]

  workflow_dispatch:

concurrency:
    group: ${{ github.ref }}
    cancel-in-progress: true

jobs:
  deploy:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@v2
    
    - name: Sync files
      uses: SamKirkland/FTP-Deploy-Action@4.3.0
      with:
        server: ${{ secrets.FTP_SERVER }}
        username: ${{ secrets.FTP_USERNAME }}
        password: ${{ secrets.FTP_PASSWORD }}
        server-dir: domains/geheimesite.nl/public_html/
        local-dir: ./dist/
````

Ik heb dit gelijk ook ingesteld voor mijn andere repos, zodat ik nooit meer handmatig websites hoef te uploaden naar de server.

Vond je dit een interessante post? Laat een reactie achter!
