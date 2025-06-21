<script lang="ts">
  import { onMount } from 'svelte';
  import { goto } from '$app/navigation';
  import { base } from '$app/paths';
  import { Bot, Lock, User } from 'lucide-svelte';
  
  let username = '';
  let password = '';
  let error = '';
  
  onMount(() => {
    // Only redirect to landing if we have a base path (GitHub Pages)
    if (base !== '') {
      goto(base + '/landing');
      return;
    }
  });

  function handleLogin() {
    // Hardcoded credentials
    if (username === 'admin' && password === '654321') {
      // In a real app, we would set a session/token here
      localStorage.setItem('isLoggedIn', 'true');
      goto('/app/dashboard');
    } else {
      error = 'Invalid credentials';
      setTimeout(() => error = '', 3000); // Clear error after 3 seconds
    }
  }
</script>

<div class="min-h-screen flex flex-col items-center justify-center bg-gradient-to-br from-blue-50 to-blue-200 dark:from-gray-900 dark:to-gray-800">
  <div class="w-full max-w-md px-6 py-8 rounded-xl shadow-xl bg-white/80 dark:bg-gray-900/80 border border-gray-200 dark:border-gray-700">
    <div class="flex justify-center mb-6">
      <span class="inline-flex items-center justify-center w-16 h-16 rounded-full bg-blue-100 dark:bg-blue-900/30">
        <Bot class="h-10 w-10 text-blue-600 dark:text-blue-400" />
      </span>
    </div>
    
    <h1 class="text-2xl font-bold text-center text-gray-900 dark:text-white mb-6">Welcome to ahente.ai</h1>
    
    <form on:submit|preventDefault={handleLogin} class="space-y-4">
      {#if error}
        <div class="p-3 text-sm text-red-600 dark:text-red-400 bg-red-100 dark:bg-red-900/30 rounded-md">
          {error}
        </div>
      {/if}
      
      <div class="space-y-1">
        <label for="username" class="block text-sm font-medium text-gray-700 dark:text-gray-300">
          Username
        </label>
        <div class="relative">
          <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
            <User class="h-5 w-5 text-gray-400" />
          </div>
          <input
            type="text"
            id="username"
            bind:value={username}
            class="block w-full pl-10 pr-3 py-2 border border-gray-300 dark:border-gray-600 rounded-md bg-white dark:bg-gray-800 text-gray-900 dark:text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
            placeholder="Enter username"
            required
          />
        </div>
      </div>
      
      <div class="space-y-1">
        <label for="password" class="block text-sm font-medium text-gray-700 dark:text-gray-300">
          Password
        </label>
        <div class="relative">
          <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
            <Lock class="h-5 w-5 text-gray-400" />
          </div>
          <input
            type="password"
            id="password"
            bind:value={password}
            class="block w-full pl-10 pr-3 py-2 border border-gray-300 dark:border-gray-600 rounded-md bg-white dark:bg-gray-800 text-gray-900 dark:text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
            placeholder="Enter password"
            required
          />
        </div>
      </div>
      
      <button
        type="submit"
        class="w-full px-4 py-2 text-sm font-medium text-white bg-blue-600 hover:bg-blue-700 dark:bg-blue-500 dark:hover:bg-blue-600 rounded-md shadow transition-colors focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
      >
        Sign In
      </button>
    </form>
    
    <div class="mt-6 text-center text-xs text-gray-500 dark:text-gray-400">
      Made with ❤️ from 🇵🇭
    </div>
  </div>
</div>
