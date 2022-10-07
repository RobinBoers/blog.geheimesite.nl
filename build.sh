#!/bin/bash
# This script builds the site using tailwind and hugo, validates it and then formats all HTML & markdown.

[[ -z "${VALIDATE}" ]] && VALIDATE=false || VALIDATE="${VALIDATE_ENV}"

echo "Cleaning cache..."
rm -rf dist

echo "Building CSS..."
npx tailwindcss -c tailwind.config.js -i src/assets/css/source.css -o src/assets/css/main.css > /dev/null 2>&1

if ! $VALIDATE; then
    echo "Building site..."
    hugo --quiet
else
    echo "Building site in validate mode..."
    HUGO_UGLYURLS=true HUGO_MINIFY_TDEWOLFF_HTML_KEEPCOMMENTS=true HUGO_ENABLEMISSINGTRANSLATIONPLACEHOLDERS=true hugo --quiet
fi

echo "Cleaning up build artifacts..."
rm -rf dist/categories
rm -rf dist/categories.html
rm -rf dist/en/categories
rm -rf dist/en/categories.html

echo "Formatting HTML..."
npx prettier --write . --loglevel error
