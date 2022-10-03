#!/bin/bash
# This script builds the site using tailwind and hugo, validates it and then formats all HTML & markdown.

echo "Cleaning cache..."
rm -rf dist

echo "Building CSS..."
npx tailwindcss -c tailwind.config.js -i src/assets/css/source.css -o src/assets/css/main.css > /dev/null 2>&1

echo "Building site..."
hugo --quiet

echo "Formatting HTML..."
npx prettier --write . --loglevel silent
