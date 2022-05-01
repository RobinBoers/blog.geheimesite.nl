#!/bin/bash

rm -rf public
cd webdevelopment-en-meer/ && hugo --minify
cd ../stupid-codes/ && hugo --minify
cd ../crzywebdev/ && hugo --minify
cd .. && mv -f webdevelopment-en-meer/public ./public && mv -f stupid-codes/public ./public/stupid-codes && mv -f crzywebdev/public ./public/en
