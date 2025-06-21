/** @type {import('./$types').PageLoad} */
export function load({ url }) {
  // If we're on GitHub Pages (URL contains /ahente.ai), redirect to landing page
  if (url.pathname.includes('/ahente.ai')) {
    return {
      status: 302,
      redirect: '/ahente.ai/landing'
    };
  }
} 