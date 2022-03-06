#!/bin/bash

rm -rf public
cd webdevelopment-en-meer/ && hugo --minify
cd ../stupid-stuff-was-taken/ && hugo --minify
cd ../crzywebdev/ && hugo --minify
cd .. && mv -f webdevelopment-en-meer/public ./public && mv -f stupid-stuff-was-taken/public ./public/notes && mv -f crzywebdev/public ./public/en