#!/bin/bash

# Build all sites using hugo and move 
# to correct places in /public.

# Remove public dir if it is already present
rm -rf public

# Build tailwindcss
cd theme && npm run build
cd ..

# Build sites
cd webdevelopment-en-meer/ && hugo --minify
cd ../stupid-codes/ && hugo --minify
cd ../crzywebdev/ && hugo --minify

# Move all sites to root dir public
cd .. && mv -f webdevelopment-en-meer/public ./public && mv -f stupid-codes/public ./public/stupid-codes && mv -f crzywebdev/public ./public/en
