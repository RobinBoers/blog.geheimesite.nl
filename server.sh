#!/bin/bash

# Run local development server on
# main site. Also launch tailwindcss 
# in watch mode.

cd theme
npm run watch &

cd ../webdevelopment-en-meer/ && hugo server -D -p 4000