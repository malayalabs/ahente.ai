<script lang="ts">
  import { onMount } from 'svelte';
  import { Bot, MessageSquare, CheckSquare, GitBranch, Moon, Sun, Wifi, WifiOff, Plus, Settings, GitCommit, Clock } from 'lucide-svelte';

  let darkMode = false;
  let isOnline = true;
  let activeTab = 'agents';

  onMount(() => {
    // Check for saved dark mode preference
    const saved = localStorage.getItem('darkMode');
    if (saved !== null) {
      darkMode = JSON.parse(saved);
    } else {
      // Check system preference
      darkMode = window.matchMedia('(prefers-color-scheme: dark)').matches;
    }
    updateTheme();
    
    // Check online status
    isOnline = navigator.onLine;
    
    const handleOnline = () => isOnline = true;
    const handleOffline = () => isOnline = false;
    
    window.addEventListener('online', handleOnline);
    window.addEventListener('offline', handleOffline);
    
    return () => {
      window.removeEventListener('online', handleOnline);
      window.removeEventListener('offline', handleOffline);
    };
  });

  function toggleDarkMode() {
    darkMode = !darkMode;
    localStorage.setItem('darkMode', JSON.stringify(darkMode));
    updateTheme();
  }

  function updateTheme() {
    if (darkMode) {
      document.documentElement.classList.add('dark');
    } else {
      document.documentElement.classList.remove('dark');
    }
  }

  function setActiveTab(tab: string) {
    activeTab = tab;
  }
</script>

<div class="min-h-screen bg-white dark:bg-gray-900">
  <!-- Header -->
  <header class="border-b border-gray-200 dark:border-gray-700 bg-white/95 dark:bg-gray-900/95 backdrop-blur sticky top-0 z-50">
    <div class="container mx-auto px-4 py-3">
      <div class="flex items-center justify-between">
        <div class="flex items-center gap-4">
          <div class="flex items-center gap-2">
            <Bot class="h-6 w-6 text-gray-900 dark:text-white" />
            <h1 class="text-xl font-semibold text-gray-900 dark:text-white">ahente.ai</h1>
          </div>
          <div class="hidden sm:flex items-center gap-1 px-2 py-1 rounded-full text-xs font-medium {isOnline ? 'bg-green-100 text-green-800 dark:bg-green-900/30 dark:text-green-400' : 'bg-red-100 text-red-800 dark:bg-red-900/30 dark:text-red-400'}">
            {#if isOnline}
              <Wifi class="h-3 w-3" />
              Online
            {:else}
              <WifiOff class="h-3 w-3" />
              Offline
            {/if}
          </div>
        </div>

        <button
          on:click={toggleDarkMode}
          class="p-2 rounded-md text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-800 transition-colors"
          aria-label="Toggle dark mode"
        >
          {#if darkMode}
            <Sun class="h-4 w-4" />
          {:else}
            <Moon class="h-4 w-4" />
          {/if}
        </button>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <main class="container mx-auto px-4 py-6">
    <!-- Tabs -->
    <div class="w-full">
      <div class="flex w-full border-b border-gray-200 dark:border-gray-700">
        <button
          on:click={() => setActiveTab('agents')}
          class="flex items-center gap-2 px-4 py-3 text-sm font-medium transition-colors border-b-2 {activeTab === 'agents' ? 'border-blue-600 dark:border-blue-400 text-gray-900 dark:text-white' : 'border-transparent text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:border-gray-300 dark:hover:border-gray-600'}"
        >
          <Bot class="h-4 w-4" />
          <span class="hidden sm:inline">Agents</span>
        </button>
        <button
          on:click={() => setActiveTab('chat')}
          class="flex items-center gap-2 px-4 py-3 text-sm font-medium transition-colors border-b-2 {activeTab === 'chat' ? 'border-blue-600 dark:border-blue-400 text-gray-900 dark:text-white' : 'border-transparent text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:border-gray-300 dark:hover:border-gray-600'}"
        >
          <MessageSquare class="h-4 w-4" />
          <span class="hidden sm:inline">Chat</span>
        </button>
        <button
          on:click={() => setActiveTab('tasks')}
          class="flex items-center gap-2 px-4 py-3 text-sm font-medium transition-colors border-b-2 {activeTab === 'tasks' ? 'border-blue-600 dark:border-blue-400 text-gray-900 dark:text-white' : 'border-transparent text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:border-gray-300 dark:hover:border-gray-600'}"
        >
          <CheckSquare class="h-4 w-4" />
          <span class="hidden sm:inline">Tasks</span>
        </button>
        <button
          on:click={() => setActiveTab('version')}
          class="flex items-center gap-2 px-4 py-3 text-sm font-medium transition-colors border-b-2 {activeTab === 'version' ? 'border-blue-600 dark:border-blue-400 text-gray-900 dark:text-white' : 'border-transparent text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:border-gray-300 dark:hover:border-gray-600'}"
        >
          <GitBranch class="h-4 w-4" />
          <span class="hidden sm:inline">Version</span>
        </button>
      </div>

      <!-- Tab Content -->
      <div class="mt-6">
        {#if activeTab === 'agents'}
          <div class="space-y-6">
            <div class="flex items-center justify-between">
              <div>
                <h2 class="text-2xl font-semibold text-gray-900 dark:text-white">AI Agents</h2>
                <p class="text-gray-600 dark:text-gray-300 mt-1">Manage your development team agents</p>
              </div>
              <button class="bg-blue-600 dark:bg-blue-500 text-white hover:bg-blue-700 dark:hover:bg-blue-600 px-4 py-2 rounded-md text-sm font-medium transition-colors">
                <Plus class="h-4 w-4 mr-2 inline" />
                Create Agent
              </button>
            </div>
            
            <div class="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
              <div class="bg-white dark:bg-gray-800 p-6 rounded-lg border border-gray-200 dark:border-gray-700 shadow-sm hover:shadow-md transition-shadow">
                <div class="flex items-start justify-between mb-4">
                  <div class="flex items-center gap-3">
                    <div class="w-10 h-10 bg-blue-100 dark:bg-blue-900/30 rounded-lg flex items-center justify-center">
                      <Bot class="h-5 w-5 text-blue-600 dark:text-blue-400" />
                    </div>
                    <div>
                      <h3 class="font-semibold text-gray-900 dark:text-white">Alex PM</h3>
                      <p class="text-sm text-gray-600 dark:text-gray-300">Project Manager</p>
                    </div>
                  </div>
                  <button class="p-2 rounded-md text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 transition-colors">
                    <Settings class="h-4 w-4" />
                  </button>
                </div>
                <p class="text-sm text-gray-600 dark:text-gray-300 mb-4">
                  Experienced project manager focused on delivery and team coordination
                </p>
                <div class="flex flex-wrap gap-1 mb-4">
                  <span class="px-2 py-1 bg-gray-100 dark:bg-gray-700 text-gray-800 dark:text-gray-200 rounded-md text-xs">Project Management</span>
                  <span class="px-2 py-1 bg-gray-100 dark:bg-gray-700 text-gray-800 dark:text-gray-200 rounded-md text-xs">Agile</span>
                  <span class="px-2 py-1 bg-gray-100 dark:bg-gray-700 text-gray-800 dark:text-gray-200 rounded-md text-xs">Scrum</span>
                </div>
                <div class="flex items-center justify-between pt-4 border-t border-gray-200 dark:border-gray-700">
                  <span class="px-2 py-1 bg-green-100 dark:bg-green-900/30 text-green-800 dark:text-green-400 rounded-full text-xs font-medium">
                    Active
                  </span>
                  <span class="text-xs text-gray-500 dark:text-gray-400">Created 2 days ago</span>
                </div>
              </div>

              <div class="bg-white dark:bg-gray-800 p-6 rounded-lg border border-gray-200 dark:border-gray-700 shadow-sm hover:shadow-md transition-shadow">
                <div class="flex items-start justify-between mb-4">
                  <div class="flex items-center gap-3">
                    <div class="w-10 h-10 bg-blue-100 dark:bg-blue-900/30 rounded-lg flex items-center justify-center">
                      <Bot class="h-5 w-5 text-blue-600 dark:text-blue-400" />
                    </div>
                    <div>
                      <h3 class="font-semibold text-gray-900 dark:text-white">Sarah Backend</h3>
                      <p class="text-sm text-gray-600 dark:text-gray-300">Backend Developer</p>
                    </div>
                  </div>
                  <button class="p-2 rounded-md text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 transition-colors">
                    <Settings class="h-4 w-4" />
                  </button>
                </div>
                <p class="text-sm text-gray-600 dark:text-gray-300 mb-4">
                  Senior backend developer with expertise in scalable systems
                </p>
                <div class="flex flex-wrap gap-1 mb-4">
                  <span class="px-2 py-1 bg-gray-100 dark:bg-gray-700 text-gray-800 dark:text-gray-200 rounded-md text-xs">Node.js</span>
                  <span class="px-2 py-1 bg-gray-100 dark:bg-gray-700 text-gray-800 dark:text-gray-200 rounded-md text-xs">Python</span>
                  <span class="px-2 py-1 bg-gray-100 dark:bg-gray-700 text-gray-800 dark:text-gray-200 rounded-md text-xs">Database</span>
                </div>
                <div class="flex items-center justify-between pt-4 border-t border-gray-200 dark:border-gray-700">
                  <span class="px-2 py-1 bg-green-100 dark:bg-green-900/30 text-green-800 dark:text-green-400 rounded-full text-xs font-medium">
                    Active
                  </span>
                  <span class="text-xs text-gray-500 dark:text-gray-400">Created 1 day ago</span>
                </div>
              </div>
            </div>
          </div>
        {:else if activeTab === 'chat'}
          <div class="space-y-6">
            <div>
              <h2 class="text-2xl font-semibold text-gray-900 dark:text-white">Chat Interface</h2>
              <p class="text-gray-600 dark:text-gray-300 mt-1">Interact with your AI agents</p>
            </div>
            
            <div class="bg-white dark:bg-gray-800 rounded-lg border border-gray-200 dark:border-gray-700 h-96 flex flex-col">
              <div class="p-4 border-b border-gray-200 dark:border-gray-700 bg-gray-50 dark:bg-gray-700/50">
                <h3 class="font-semibold text-gray-900 dark:text-white">Chat with AI Agents</h3>
              </div>
              <div class="flex-1 p-4 overflow-y-auto">
                <div class="space-y-4">
                  <div class="flex gap-3">
                    <div class="w-8 h-8 bg-blue-100 dark:bg-blue-900/30 rounded-full flex items-center justify-center flex-shrink-0">
                      <Bot class="h-4 w-4 text-blue-600 dark:text-blue-400" />
                    </div>
                    <div class="flex-1 min-w-0">
                      <p class="text-sm text-gray-600 dark:text-gray-300 mb-1">Alex PM</p>
                      <p class="text-gray-900 dark:text-white bg-gray-100 dark:bg-gray-700 p-3 rounded-lg">Hello! I'm your project manager. How can I help you today?</p>
                    </div>
                  </div>
                  <div class="flex gap-3 justify-end">
                    <div class="flex-1 max-w-xs">
                      <p class="text-gray-900 dark:text-white bg-blue-100 dark:bg-blue-900 p-3 rounded-lg">Can you help me plan the next sprint?</p>
                    </div>
                    <div class="w-8 h-8 bg-gray-200 dark:bg-gray-700 rounded-full flex items-center justify-center flex-shrink-0">
                      <span class="text-xs text-gray-500 dark:text-gray-400">You</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="p-4 border-t border-gray-200 dark:border-gray-700">
                <div class="flex gap-2">
                  <input 
                    type="text" 
                    placeholder="Type your message..." 
                    class="flex-1 px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-md bg-white dark:bg-gray-900 text-gray-900 dark:text-white placeholder:text-gray-500 dark:placeholder:text-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500"
                  />
                  <button class="bg-blue-600 dark:bg-blue-500 text-white hover:bg-blue-700 dark:hover:bg-blue-600 px-4 py-2 rounded-md transition-colors">
                    Send
                  </button>
                </div>
              </div>
            </div>
          </div>
        {:else if activeTab === 'tasks'}
          <div class="space-y-6">
            <div class="flex items-center justify-between">
              <div>
                <h2 class="text-2xl font-semibold text-gray-900 dark:text-white">Task Management</h2>
                <p class="text-gray-600 dark:text-gray-300 mt-1">Organize and track your development tasks</p>
              </div>
              <button class="bg-blue-600 dark:bg-blue-500 text-white hover:bg-blue-700 dark:hover:bg-blue-600 px-4 py-2 rounded-md text-sm font-medium transition-colors">
                <Plus class="h-4 w-4 mr-2 inline" />
                Create Task
              </button>
            </div>
            
            <div class="grid gap-6 md:grid-cols-3">
              <div class="bg-white dark:bg-gray-800 p-4 rounded-lg border border-gray-200 dark:border-gray-700">
                <h3 class="font-semibold text-gray-900 dark:text-white mb-4 flex items-center gap-2">
                  <div class="w-3 h-3 bg-blue-500 rounded-full"></div>
                  To Do
                </h3>
                <div class="space-y-3">
                  <div class="bg-gray-50 dark:bg-gray-700 p-4 rounded-lg border border-gray-200 dark:border-gray-600">
                    <h4 class="font-medium text-gray-900 dark:text-white mb-1">Set up CI/CD pipeline</h4>
                    <p class="text-sm text-gray-600 dark:text-gray-300 mb-3">Configure automated testing and deployment</p>
                    <div class="flex items-center gap-2 mb-2">
                      <span class="px-2 py-1 bg-blue-100 dark:bg-blue-900/30 text-blue-800 dark:text-blue-400 rounded-full text-xs">DevOps</span>
                      <span class="text-xs text-gray-500 dark:text-gray-400">High Priority</span>
                    </div>
                    <div class="flex items-center gap-2 text-xs text-gray-500 dark:text-gray-400">
                      <Clock class="h-3 w-3" />
                      Due in 3 days
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="bg-white dark:bg-gray-800 p-4 rounded-lg border border-gray-200 dark:border-gray-700">
                <h3 class="font-semibold text-gray-900 dark:text-white mb-4 flex items-center gap-2">
                  <div class="w-3 h-3 bg-yellow-500 rounded-full"></div>
                  In Progress
                </h3>
                <div class="space-y-3">
                  <div class="bg-gray-50 dark:bg-gray-700 p-4 rounded-lg border border-gray-200 dark:border-gray-600">
                    <h4 class="font-medium text-gray-900 dark:text-white mb-1">Design user interface</h4>
                    <p class="text-sm text-gray-600 dark:text-gray-300 mb-3">Create wireframes and mockups</p>
                    <div class="flex items-center gap-2 mb-2">
                      <span class="px-2 py-1 bg-yellow-100 dark:bg-yellow-900/30 text-yellow-800 dark:text-yellow-400 rounded-full text-xs">Design</span>
                      <span class="text-xs text-gray-500 dark:text-gray-400">Medium Priority</span>
                    </div>
                    <div class="flex items-center gap-2 text-xs text-gray-500 dark:text-gray-400">
                      <Clock class="h-3 w-3" />
                      Due in 1 week
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="bg-white dark:bg-gray-800 p-4 rounded-lg border border-gray-200 dark:border-gray-700">
                <h3 class="font-semibold text-gray-900 dark:text-white mb-4 flex items-center gap-2">
                  <div class="w-3 h-3 bg-green-500 rounded-full"></div>
                  Done
                </h3>
                <div class="space-y-3">
                  <div class="bg-gray-50 dark:bg-gray-700 p-4 rounded-lg border border-gray-200 dark:border-gray-600 opacity-75">
                    <h4 class="font-medium text-gray-900 dark:text-white mb-1">Project setup</h4>
                    <p class="text-sm text-gray-600 dark:text-gray-300 mb-3">Initialize repository and basic structure</p>
                    <div class="flex items-center gap-2 mb-2">
                      <span class="px-2 py-1 bg-green-100 dark:bg-green-900/30 text-green-800 dark:text-green-400 rounded-full text-xs">Setup</span>
                      <span class="text-xs text-gray-500 dark:text-gray-400">Completed</span>
                    </div>
                    <div class="flex items-center gap-2 text-xs text-gray-500 dark:text-gray-400">
                      <Clock class="h-3 w-3" />
                      Completed 2 days ago
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        {:else if activeTab === 'version'}
          <div class="space-y-6">
            <div>
              <h2 class="text-2xl font-semibold text-gray-900 dark:text-white">Version Control</h2>
              <p class="text-gray-600 dark:text-gray-300 mt-1">Track changes and manage versions of your AI agents</p>
            </div>
            
            <div class="bg-white dark:bg-gray-800 rounded-lg border border-gray-200 dark:border-gray-700">
              <div class="p-4 border-b border-gray-200 dark:border-gray-700 bg-gray-50 dark:bg-gray-700/50">
                <h3 class="font-semibold text-gray-900 dark:text-white">Recent Commits</h3>
              </div>
              <div class="p-4">
                <div class="space-y-4">
                  <div class="flex items-start gap-3 p-3 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-700/50 transition-colors">
                    <div class="w-8 h-8 bg-blue-100 dark:bg-blue-900/30 rounded-full flex items-center justify-center flex-shrink-0">
                      <GitCommit class="h-4 w-4 text-blue-600 dark:text-blue-400" />
                    </div>
                    <div class="flex-1 min-w-0">
                      <p class="font-medium text-gray-900 dark:text-white mb-1">Updated agent configuration</p>
                      <p class="text-sm text-gray-600 dark:text-gray-300 mb-2">Added new skills and personality traits to Alex PM</p>
                      <div class="flex items-center gap-4 text-xs text-gray-500 dark:text-gray-400">
                        <span>2 hours ago</span>
                        <span>•</span>
                        <span>ahente-ai</span>
                      </div>
                    </div>
                    <span class="px-2 py-1 bg-green-100 dark:bg-green-900/30 text-green-800 dark:text-green-400 rounded-full text-xs">
                      v1.2.0
                    </span>
                  </div>
                  
                  <div class="flex items-start gap-3 p-3 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-700/50 transition-colors">
                    <div class="w-8 h-8 bg-blue-100 dark:bg-blue-900/30 rounded-full flex items-center justify-center flex-shrink-0">
                      <GitCommit class="h-4 w-4 text-blue-600 dark:text-blue-400" />
                    </div>
                    <div class="flex-1 min-w-0">
                      <p class="font-medium text-gray-900 dark:text-white mb-1">Created new agent</p>
                      <p class="text-sm text-gray-600 dark:text-gray-300 mb-2">Added Sarah Backend with Node.js expertise</p>
                      <div class="flex items-center gap-4 text-xs text-gray-500 dark:text-gray-400">
                        <span>1 day ago</span>
                        <span>•</span>
                        <span>ahente-ai</span>
                      </div>
                    </div>
                    <span class="px-2 py-1 bg-green-100 dark:bg-green-900/30 text-green-800 dark:text-green-400 rounded-full text-xs">
                      v1.1.0
                    </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        {/if}
      </div>
    </div>
  </main>
</div>
