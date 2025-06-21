# Ahente.ai App Deployment

This directory contains the configuration for deploying the ahente.ai app to Netlify.

## Deployment Steps

1. **Create a new Netlify site** from this repository
2. **Set build settings:**
   - Build command: `npm run build`
   - Publish directory: `build`
   - Node version: `18`

3. **Environment variables** (if needed):
   - Add any required environment variables in Netlify dashboard

4. **Custom domain** (optional):
   - Set up `app.ahente.ai` or similar custom domain

## File Structure

- `netlify.toml` - Netlify configuration
- `svelte.config.js` - SvelteKit configuration for app
- `vite.config.ts` - Vite configuration for app
- `src/routes/app/` - App routes and components

## Build Process

The app will be built with:
- No base path (served from root domain)
- Client-side routing enabled
- Static file generation 