#!/bin/bash

cd webdevelopment-en-meer/ && hugo --minify
cd ../stupid-stuff-was-taken/ && hugo --minify
cd .. && mv -f webdevelopment-en-meer/public ./public && mv -f stupid-stuff-was-taken/public ./public/notes
