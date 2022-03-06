---
title: 'Display Blogger feed on HTML site using RSS'
date: 2022-02-13T10:48:00.001-08:00
draft: false
url: /2022/02/display-blogger-feed-on-html-site-using.html
tags: 
- javascript
- blogger
- rss
---

This is how to parse and display a blogger feed on your website. Replace the URL of the API-call in the last script tag to change the RSS feed the script pulls. Update the `months` array to change the language for the date to English.

```
  
<script>  
let postTitle = new Array();  
let postContent = new Array();  
let postUrl = new Array();  
let postDate = new Array();  
  
let months = [&quot;januari&quot;, &quot;februari&quot;, &quot;maart&quot;, &quot;april&quot;, &quot;mei&quot;, &quot;juni&quot;, &quot;juli&quot;, &quot;augustus&quot;, &quot;september&quot;, &quot;oktober&quot;, &quot;november&quot;, &quot;december&quot;];  
  
let feedSize = 0;  
  
function callback(apiData) {  
    function load() {  
        if (&quot;entry&quot; in apiData.feed) {  
            let feedSize = apiData.feed.entry.length;  
            for (let i = 0; i &lt; feedSize; i++) {  
                let post = apiData.feed.entry[i];  
                console.log(post)  
  
                var p = post.published.$t.substring(5, 7);  
  
                for (var f = 0; f &lt; post.link.length; f++) {  
                    if (post.link[f].rel == &quot;alternate&quot;) {  
                        postUrl.push(post.link[f].href);  
                        break  
                    }  
                }  
  
                let postDateDay = post.published.$t.substring(8, 10);  
                let postDateMonth = months[parseInt(p, 10) - 1];  
                let postDateYear = post.published.$t.substring(0, 4);  
  
                postDate.push(`${postDateDay} ${postDateMonth} ${postDateYear}`);  
  
                postTitle.push(post.title.$t);  
                postContent.push(post.content.$t);  
            }  
        }  
    }  
  
    function display() {  
        let postCount = postTitle.length;  
        var currentPost = 0;  
        while (currentPost &lt; postCount) {          
            document.write(`  
                &lt;article class=&quot;post mt-10&quot;&gt;  
                    &lt;div class=&quot;text-center my-7 max-w-xl mx-auto&quot;&gt;  
                        &lt;h1 id=&quot;post-${currentPost}&quot; class=&quot;mb-0 text-4xl&quot;&gt;${postTitle[currentPost]}&lt;/h1&gt;  
                        &lt;p class=&quot;my-5 bold&quot;&gt;${postDate[currentPost]}&lt;/p&gt;  
                    &lt;/div&gt;  
      
                    &lt;section&gt;  
                        ${postContent[currentPost]}  
                    &lt;/section&gt;  
                &lt;/article&gt;  
      
                &lt;hr class=&quot;my-7 border-none&quot;&gt;  
            `);  
      
            currentPost++  
        }  
    }  
      
    load();  
    display();  
}  
</script>  
<script src="https://webdevelopment-en-meer.blogspot.com/feeds/posts/default?max-results=10&start-index=1&alt=json-in-script&callback=callback"></script>  

```