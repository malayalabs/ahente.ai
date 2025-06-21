#!/bin/bash

set -e

echo "🚀 Deploying to Netlify..."

# Check if netlify CLI is installed
if ! command -v netlify &> /dev/null; then
    echo "❌ Netlify CLI not found. Installing..."
    npm install -g netlify-cli
fi

# Build the app
echo "📦 Building the app..."
npm run build

# Deploy to Netlify
echo "🌐 Deploying to Netlify..."
netlify deploy --prod --dir=build

echo "✅ Deployment complete!"
echo "🔗 Your app is live at: https://ahente-ai.netlify.app" 