---
title: "Add an unknown PGP key in Arch Linux"
date: 2023-03-10T19:56:52+01:00
draft: true
tags: 
- 
---

Sometimes installing an AUR package fails because the PGP key it was signed with isn't on your system. If that's the case run this:

```shell
gpg --recv-key [KEY_ID]
```

{{< supplement >}}
See <https://forum.manjaro.org/t/aur-package-fails-to-verify-pgp-gpg-key-unknown-public-key-one-or-more-pgp-signatures-could-not-be-verified/6663>.
{{</ supplement >}}
