#!/bin/bash

rm -rf public
cd webdevelopment-en-meer/ && hugo --minify
cd ../notes/ && hugo --minify
cd ../crzywebdev/ && hugo --minify
cd .. && mv -f webdevelopment-en-meer/public ./public && mv -f notes/public ./public/notes && mv -f crzywebdev/public ./public/en
