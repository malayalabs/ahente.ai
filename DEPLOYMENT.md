# Deployment Guide

This project uses a dual deployment strategy:
- **GitHub Pages**: Landing page (automatic via GitHub Actions)
- **Netlify**: App deployment (manual via script)

## 🚀 GitHub Pages (Automatic)

The landing page is automatically deployed to GitHub Pages when you push to the `main` branch.

**URL**: https://malayalabs.github.io/ahente.ai/

**Configuration**:
- Uses `svelte.config.gh-pages.js` and `vite.config.gh-pages.ts`
- Base path: `/ahente.ai`
- Deployed via GitHub Actions workflow

## 🌐 Netlify (Manual)

The app is deployed to Netlify using a manual script.

**URL**: https://ahente-app.netlify.app

### Prerequisites

1. **Install Netlify CLI**:
   ```bash
   npm install -g netlify-cli
   ```

2. **Login to Netlify**:
   ```bash
   netlify login
   ```

3. **Link to your Netlify site** (first time only):
   ```bash
   netlify link
   ```

### Deploy to Netlify

**Option 1: Using npm script**
```bash
npm run deploy:netlify
```

**Option 2: Using the script directly**
```bash
./deploy-netlify.sh
```

**Option 3: Manual deployment**
```bash
npm run build
netlify deploy --prod --dir=build
```

## 📁 File Structure

```
├── .github/workflows/
│   └── deploy.yml              # GitHub Pages deployment
├── svelte.config.js            # Netlify config (no base path)
├── svelte.config.gh-pages.js   # GitHub Pages config (with base path)
├── vite.config.ts              # Netlify config (no base path)
├── vite.config.gh-pages.ts     # GitHub Pages config (with base path)
├── deploy-netlify.sh           # Netlify deployment script
└── netlify.toml               # Netlify configuration
```

## 🔄 Workflow

1. **Push to main branch** → GitHub Pages deploys automatically
2. **Run deploy script** → Netlify deploys manually
3. **Landing page** redirects to Netlify app

## 🛠️ Troubleshooting

### GitHub Pages Issues
- Check GitHub Actions tab for build errors
- Verify base path configuration
- Ensure `gh-pages` branch is created

### Netlify Issues
- Ensure Netlify CLI is installed and logged in
- Check if site is linked correctly
- Verify build output in `build/` directory 