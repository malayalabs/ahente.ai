import { browser } from '$app/environment';
import { redirect } from '@sveltejs/kit';

export function load() {
  if (browser) {
    const isLoggedIn = localStorage.getItem('isLoggedIn') === 'true';
    if (!isLoggedIn) {
      throw redirect(302, '/');
    }
  }
  return {};
}

export const prerender = false;
export const ssr = false; 