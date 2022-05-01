---
title: 'Alias for diff-so-fancy'
date: 2021-08-27T04:59:00.004-07:00
draft: false
url: /2021/08/alias-for-diff-so-fancy.html
tags: 
- tools
- git
- cli
---

`diff-so-fancy` is a tool to create cooler looking `git diff`s. To alias `git dsf`, enter these commands:

```bash
git config --global alias.dsf "diff --color"  
git config --global pager.dsf "diff-so-fancy | less --tabs=4 -RFXS"
```
