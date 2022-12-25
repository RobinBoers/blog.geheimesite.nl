---
title: "Static websites bouwen met Hugo"
date: 2022-12-27T17:13:44+01:00
tags: 
- webdesign
- tools
---

Ik heb mijn site en blog dit jaar herschreven met behulp van Hugo. Hugo is een _static site generator_. Dat is een programmaatje dat op basis van je content en een aantal templates de HTML voor je genereerd.

{{< info "Dit is nogal een technische post" / >}}

Om te illustreren hoe dit anders is dan de vorige setup moet ik even uitleggen hoe het eerst werkte. Mijn website was volledig met de hand geschreven in HTML en PHP. De dingen die super vaak herhaald werden had ik in een apart submapje gestopt en [`include`de](https://www.php.net/manual/en/function.include.php) ik dan met PHP. Het probleem was dat mijn site toch nog heel veel duplicaties bevatte. Als ik iets wilde veranderen aan de projecten pages moest ik 20 HTML bestanden met de hand aanpassen. Ook is PHP sloomer dan static HTML: voor elk request moest de page on-the-spot worden gerendered op de server.

Verder was mijn site ook gewoonweg slecht gebouwd. Voor het weergeven van de projecten gebruikte ik Javascript die op de client-side de projecten ophaalde van GitHub. Het probleem is natuurlijk dat dat ongeveer een seconde duurde. Ook werden de images in volledige resolutie van GitHub geserved. Dit gold ook voor de boeken page.

Met mijn huidige setup wordt de HTML gegenerate op basis van een template. Als ik een wijziging aan het design wil maken update ik 1 template en worden alle pages automatisch geupdate. Alle content wordt ook als plain-text opgeslagen, dus het editten daarvan is een stuk makkelijker. Het is dus veel fijner voor mij om de site op deze manier te managen.

En de boeken en projecten page worden nu gerenderd als de site gebuild wordt en zijn daarna static sites op mijn server, dus er is nul delay bij het laden. Ook worden de images bij het builden gedownload en geresized/compressed, waardoor ze ongeveer 30x zo klein zijn.

Daarnaast heb ik ook fatsoenlijke caching voor de site ingesteld. Cachen betekent dat de browser de website "onthoud". Daardoor hoeft hij hem niet volledig opnieuw te downloaden als je hem opnieuw laadt. De HTML wordt voor een dag gecacht, de CSS en javascript voor week en de fonts en plaatjes voor altijd. Dit kan geen problemen veroorzaken als ik dingen wil updaten, want de CSS, JS en plaatjes zijn [gefingerprint](https://www.xt-cms.com/blog/cache-control-filename-fingerprinting/). Dat betekent dat er een hash van de inhoud in de filename zit, waardoor de filename dus veranderd als ik het plaatje veranderd, en de cache zit aan de filename gebonden.

Ik heb [een scriptje](https://github.com/RobinBoers/geheimesite.nl/blob/master/bin/build.sh) geschreven dat de CSS compiled met [tailwind](https://tailwindcss.org) en dan de site build met Hugo. Ik run dit script elke nacht met GitHub actions, dus de projecten en boeken pages zijn altijd up-to-date.

Dus ja, nu is mijn website echt [fucking snel](https://pagespeed.web.dev/report?url=https%3A%2F%2Fgeheimesite.nl%2F&hl=nl).

{{< figure src="/images/pagespeed-insights-dec-2022.png" alt="Google Pagespeed geeft een rating van 90+" >}}

{{< hr >}}

## Tips en tricks voor je eigen site

Dus ben je nu helemaal enthousiast hoe je dit zelf ook kan doen? (waarschijnlijk niet :P)

Hier zijn een aantal praktische tips en tricks voor je eigen Hugo site. Het grootste deel hiervan heb ik trouwens niet zelf bedacht, maar ook op andere plekken gevonden.

### Verberg bepaalde pages van zoekmachines

Misschien wil je dat bepaalde pages niet op Google verschijnen? Plaats dit stukje code in je `head.html` template:

```html
{{ with .Page.Params.hideFromGoogle }}
    <!-- Prevent search engines from indexing -->
    <meta name="robots" content="noindex" />
{{ end }}
```

Je kan nu in de [frontmatter](https://gohugo.io/content-management/front-matter/) van de pagina's die je niet op Google wil hebben dit opnemen:

```markdown
---
title: "Static websites bouwen met Hugo"
hideFromGoogle: true
---
```

### Human-readable dates

```go
{{ $diff := div (sub now.Unix .Date.Unix) 86400 }}
{{ if eq $diff 0 }} earlier today
{{ else }}
{{ if eq $diff -1 }} one day from now
{{ else }}
{{ if lt $diff 0 }} {{ mul -1 $diff }} days from now
{{ else }}
{{ if eq $diff 1 }} one day ago
{{ else }}
{{ $diff }} days ago
{{ end }}{{ end }}{{ end }}{{ end }}
```

### Canonical `<link>` voor pagina's in meerdere talen

Mijn website (en blog) is zowel Nederlands- als Engelstalig. Dat betekent dat ik van elke pagina twee versies heb: eentje in het Nederlands en eentje in het Engels. Ik geef beide pages dan dezelfde `translationKey`:

```markdown
---
title: "About me"
translationKey: about
---
```

```markdown
---
title: "Over mij"
translationKey: about
---
```

Ik heb vervolgens in de `head.html` template het onderstaande stukje code opgenomen. Dit zorgt ervoor dat je geen dubbele Google zoekresultaten krijgt en dat browsers weten dat de pagina in meerdere talen beschikbaar is.

```html
<link rel="canonical" href="{{ .Permalink }}" />

{{ if .IsTranslated }} 
    {{ range .Translations }}
        <link
            rel="alternate"
            hreflang="{{ .Language.Lang }}"
            href="{{ .Permalink }}"
            title="{{ .Language.LanguageName }}" />
    {{ end }} 
{{ end }}
```

### "Edit on GitHub"-link

Ik heb in de footer van mijn blog een linkje waarmee je de pagina op GitHub kan editten. Daarvoor gebruik ik dit stukje code:

```html
{{ if .IsPage}} 
    {{ with  .File.Path }}
        <a href='https://github.com/RobinBoers/blog/edit/master/content/{{ $.Site.LanguageCode }}/{{ . }}'>
            Edit on GitHub
        </a>
    {{ end }}
{{ end }}
```

### Geef pagina-size weer

Ik geef de grootte van het HTML document ook weer in de footer. Dit wordt berekend met Javascript:

```html
<span class="page-size">??? kB</span>
<script>
    let pageWeight = document.body.innerHTML.length / 1000;
    document.querySelector('.page-size').innerText = `${pageWeight.toFixed(1)} kB`
</script>
```

### Laat de laatste GitHub commit zien

Mijn posts geven aan of ze bewerkt zijn na het posten en ik welke commit dat was. Daarvoor moet je in je Hugo config dit toevoegen:

```yaml
enableGitInfo: true
frontmatter:
    lastmod:
        - lastmod
        - :git
        - date
        - publishDate
```

Dit zorgt ervoor dat Hugo de informatie voor `{{ .Lastmod }}` bij uit je git repo haalt. Vervolgens heb ik dit in mijn `single.html` template:

```html
{{ $date := dateFormat "2 January 2006" .Date }}
{{ $lastmod := dateFormat "2 January 2006" .Lastmod }}
<p class="post-publish-date">
    Published on {{ $date }}
</p>
{{ if and (ne $lastmod $date) (gt .Lastmod .Date) }}
    <p class="post-update-date">
        Last updated on {{ $lastmod }}
    </p>
{{ end }}

{{ with .Site.Params.github_repo }}
    {{ if $.GitInfo }} 
        <p class="post-commit">
            Latest commit: 
            <a href="https://github.com/{{ . }}/commit/{{ $.GitInfo.Hash }}" rel="noopener">
                {{ $.GitInfo.AbbreviatedHash }}
            </a>
        </p>
    {{ end }}
{{ end }}
```

Als je gebruikt maakt van GitHub actions voor het deployen van je site moet je die een beetje aanpassen. Bryce Wray heeft [een goede uitleg](https://www.brycewray.com/posts/2022/06/get-good-git-info-hugo) hierover:

> **However**, there’s a catch **if** you’re using a GitHub Action to deploy your site to your chosen host, as I’ve been doing lately. The problem is that, although these automated .Lastmod indications will be correct when you’re developing locally with hugo server, they’ll all take on the current date when you deploy.

Je moet `fetch-depth: 0` aan je checkout action toevoegen:

```yaml
- name: Checkout
  uses: actions/checkout@v3
  with:
    fetch-depth: 0
```

### Invidious embeds

Mijn site gebruikt [Invidious](https://invidious.io) in plaats van YouTube voor het embedden van video's, want ik heb liever niet dat Google mijn lezers trackt :)

Ik heb hiervoor een shortcode:

```html
<iframe
    src='https://yewtu.be/embed/{{ with .Get "id" }}{{ . }}{{ else }}{{ .Get 0 }}{{ end }}'
    allowfullscreen
    class='border-none aspect-video{{ with .Get "class" }} {{ . }}{{ end }}'
    title='{{ with .Get "title" }}{{ . }}{{ else }}YouTube video via Invidious{{ end }}'>
</iframe>
```

De Invidious instance die ik gebruik is [yewtu.be](https://yewtu.be).

{{< hr >}}

Ik denk niet dat dit mijn reguliere lezers veel zal schelen, maar het leek me gewoon leuk om een keer alle dingen die ik tegenkwam en interessant/leuk vond te bundelen in een post. Misschien dat een desperate Googlende programmeur deze post ooit nog eens tegenkomt :P

Anyway, ik vond het echt super leuk om te schrijven.  
Happy 2022 alvast!
