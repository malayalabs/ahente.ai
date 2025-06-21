<script lang="ts">
  import { Bot } from 'lucide-svelte';
</script>

<div class="min-h-screen flex flex-col items-center justify-center bg-gradient-to-br from-blue-50 to-blue-200 dark:from-gray-900 dark:to-gray-800">
  <div class="text-center px-6 py-12 rounded-xl shadow-xl bg-white/80 dark:bg-gray-900/80 border border-gray-200 dark:border-gray-700 max-w-xl">
    <div class="flex justify-center mb-4">
      <span class="inline-flex items-center justify-center w-16 h-16 rounded-full bg-blue-100 dark:bg-blue-900/30">
        <Bot class="h-10 w-10 text-blue-600 dark:text-blue-400" />
      </span>
    </div>
    <h1 class="text-4xl font-extrabold text-gray-900 dark:text-white mb-4">Welcome to ahente.ai</h1>
    <p class="text-lg text-gray-700 dark:text-gray-300 mb-8">
      Your AI-powered development team. Manage agents, chat, assign tasks, and track project progress—all in one modern workspace.
    </p>
    <a href="/app" class="inline-block px-8 py-3 bg-blue-600 hover:bg-blue-700 dark:bg-blue-500 dark:hover:bg-blue-600 text-white text-lg font-semibold rounded-md shadow transition-colors">
      Enter App
    </a>
    <div class="mt-8 text-sm text-gray-500 dark:text-gray-400">
      <span>Built for modern teams • Open Source</span>
    </div>
    <footer class="mt-8 text-xs text-gray-400 dark:text-gray-500">
      Made with ❤️ from 🇵🇭
    </footer>
  </div>
</div>
