---
title: 'form.submit() is not a function (JavaScript)'
date: 2021-08-13T12:42:00.001-07:00
draft: false
url: /2021/08/formsubmit-is-not-function-javascript.html
categories: ["note"]
tags: 
- javascript
- forms
- webdesign
---

Recently, I tried sending a form using JS. I was sure I didn't make typos and errors in my code. Turns out you can't set the name attribute of an input `submit` and use the JS function `submit()` at the same time. JS tries to access submit, finds the button and thinks: "Weird, this isn't a function". So, make sure you didn't set the name attribute of any input to `submit`. It can conflict with the JS function.