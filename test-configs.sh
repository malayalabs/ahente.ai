#!/bin/bash

# Test script to switch between GitHub Pages and Netlify configurations

case "$1" in
  "gh-pages")
    echo "Switching to GitHub Pages configuration..."
    cp svelte.config.gh-pages.js svelte.config.js
    cp vite.config.gh-pages.ts vite.config.ts
    echo "✅ GitHub Pages config active - test with /ahente.ai route"
    ;;
  "netlify")
    echo "Switching to Netlify configuration..."
    cp svelte.config.gh-pages.js svelte.config.js
    sed -i '' 's/base: '\''\/ahente.ai'\''/base: '\'''\''/g' svelte.config.js
    cp vite.config.gh-pages.ts vite.config.ts
    sed -i '' 's/base: '\''\/ahente.ai'\''/base: '\'''\''/g' vite.config.ts
    echo "✅ Netlify config active - test with / route"
    ;;
  *)
    echo "Usage: $0 {gh-pages|netlify}"
    echo "  gh-pages: Switch to GitHub Pages config (base: '/ahente.ai')"
    echo "  netlify:  Switch to Netlify config (base: '')"
    exit 1
    ;;
esac 