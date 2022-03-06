---
title: 'Setup permissions for XAMPP'
date: 2021-08-06T02:55:00.004-07:00
draft: false
url: /2021/08/setup-permissions-xampp.html
categories: ["note"]
tags: 
- cli
- linux
- php
---

When installing XAMPP on Linux, you need to setup permissions to access the `htdocs` folder located at `/opt/lampp/htdocs/`.

```
sudo chown -Rc robin /opt/lampp/htdocs/  
sudo chmod -Rc 777 /opt/lampp/htdocs/
```