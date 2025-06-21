<script>
  import { onMount } from 'svelte';
  import { Brain, MessageSquare, Code, Zap, Github, Twitter } from 'lucide-svelte';

  let darkMode = false;

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
</script>

<div class="min-h-screen bg-gradient-to-br from-background via-background to-muted">
  <!-- Header -->
  <header class="border-b border-border/40 bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60">
    <div class="container mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex h-16 items-center justify-between">
        <div class="flex items-center space-x-2">
          <Brain class="h-8 w-8 text-primary" />
          <span class="text-xl font-bold">Ahente AI</span>
        </div>
        
        <nav class="hidden md:flex items-center space-x-6">
          <a href="#features" class="text-sm font-medium text-muted-foreground hover:text-foreground transition-colors">
            Features
          </a>
          <a href="#about" class="text-sm font-medium text-muted-foreground hover:text-foreground transition-colors">
            About
          </a>
          <a href="#contact" class="text-sm font-medium text-muted-foreground hover:text-foreground transition-colors">
            Contact
          </a>
        </nav>

        <div class="flex items-center space-x-4">
          <button
            on:click={toggleDarkMode}
            class="p-2 rounded-md text-muted-foreground hover:text-foreground hover:bg-accent transition-colors"
            aria-label="Toggle dark mode"
          >
            {#if darkMode}
              <svg class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 3v1m0 16v1m9-9h-1M4 12H3m15.364 6.364l-.707-.707M6.343 6.343l-.707-.707m12.728 0l-.707.707M6.343 17.657l-.707.707M16 12a4 4 0 11-8 0 4 4 0 018 0z" />
              </svg>
            {:else}
              <svg class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z" />
              </svg>
            {/if}
          </button>
          
          <button class="bg-primary text-primary-foreground hover:bg-primary/90 px-4 py-2 rounded-md text-sm font-medium transition-colors">
            Get Started
          </button>
        </div>
      </div>
    </div>
  </header>

  <!-- Hero Section -->
  <section class="py-20 px-4 sm:px-6 lg:px-8">
    <div class="container mx-auto text-center">
      <h1 class="text-4xl sm:text-5xl lg:text-6xl font-bold text-foreground mb-6">
        Build the Future with
        <span class="text-transparent bg-clip-text bg-gradient-to-r from-primary to-purple-600">
          AI Development
        </span>
      </h1>
      
      <p class="text-xl text-muted-foreground max-w-3xl mx-auto mb-8">
        Ahente AI is your comprehensive platform for creating, managing, and deploying AI agents. 
        From simple chatbots to complex autonomous systems, build it all in one place.
      </p>
      
      <div class="flex flex-col sm:flex-row gap-4 justify-center">
        <button class="bg-primary text-primary-foreground hover:bg-primary/90 px-8 py-3 rounded-lg text-lg font-medium transition-colors">
          Start Building
        </button>
        <button class="border border-border bg-background text-foreground hover:bg-accent px-8 py-3 rounded-lg text-lg font-medium transition-colors">
          View Demo
        </button>
      </div>
    </div>
  </section>

  <!-- Features Section -->
  <section id="features" class="py-20 px-4 sm:px-6 lg:px-8 bg-muted/30">
    <div class="container mx-auto">
      <div class="text-center mb-16">
        <h2 class="text-3xl sm:text-4xl font-bold text-foreground mb-4">
          Powerful Features for AI Development
        </h2>
        <p class="text-xl text-muted-foreground max-w-2xl mx-auto">
          Everything you need to create, manage, and deploy AI agents at scale.
        </p>
      </div>
      
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
        <div class="bg-card p-6 rounded-lg border border-border">
          <div class="w-12 h-12 bg-primary/10 rounded-lg flex items-center justify-center mb-4">
            <Brain class="h-6 w-6 text-primary" />
          </div>
          <h3 class="text-xl font-semibold text-foreground mb-2">AI Agent Management</h3>
          <p class="text-muted-foreground">
            Create, configure, and manage AI agents with an intuitive interface. 
            Support for multiple AI models and custom configurations.
          </p>
        </div>
        
        <div class="bg-card p-6 rounded-lg border border-border">
          <div class="w-12 h-12 bg-primary/10 rounded-lg flex items-center justify-center mb-4">
            <MessageSquare class="h-6 w-6 text-primary" />
          </div>
          <h3 class="text-xl font-semibold text-foreground mb-2">Chat Interface</h3>
          <p class="text-muted-foreground">
            Real-time chat interface for testing and interacting with your AI agents. 
            Built-in conversation history and export capabilities.
          </p>
        </div>
        
        <div class="bg-card p-6 rounded-lg border border-border">
          <div class="w-12 h-12 bg-primary/10 rounded-lg flex items-center justify-center mb-4">
            <Code class="h-6 w-6 text-primary" />
          </div>
          <h3 class="text-xl font-semibold text-foreground mb-2">Task Management</h3>
          <p class="text-muted-foreground">
            Organize and track AI tasks with advanced project management tools. 
            Monitor performance and optimize workflows.
          </p>
        </div>
        
        <div class="bg-card p-6 rounded-lg border border-border">
          <div class="w-12 h-12 bg-primary/10 rounded-lg flex items-center justify-center mb-4">
            <Zap class="h-6 w-6 text-primary" />
          </div>
          <h3 class="text-xl font-semibold text-foreground mb-2">Version Control</h3>
          <p class="text-muted-foreground">
            Track changes and manage versions of your AI agents. 
            Rollback to previous versions and collaborate with team members.
          </p>
        </div>
        
        <div class="bg-card p-6 rounded-lg border border-border">
          <div class="w-12 h-12 bg-primary/10 rounded-lg flex items-center justify-center mb-4">
            <svg class="h-6 w-6 text-primary" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z" />
            </svg>
          </div>
          <h3 class="text-xl font-semibold text-foreground mb-2">Analytics & Insights</h3>
          <p class="text-muted-foreground">
            Comprehensive analytics and insights into your AI agents' performance. 
            Monitor usage, response times, and user satisfaction.
          </p>
        </div>
        
        <div class="bg-card p-6 rounded-lg border border-border">
          <div class="w-12 h-12 bg-primary/10 rounded-lg flex items-center justify-center mb-4">
            <svg class="h-6 w-6 text-primary" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z" />
            </svg>
          </div>
          <h3 class="text-xl font-semibold text-foreground mb-2">Security & Privacy</h3>
          <p class="text-muted-foreground">
            Enterprise-grade security with end-to-end encryption. 
            GDPR compliant with advanced privacy controls.
          </p>
        </div>
      </div>
    </div>
  </section>

  <!-- About Section -->
  <section id="about" class="py-20 px-4 sm:px-6 lg:px-8">
    <div class="container mx-auto">
      <div class="grid lg:grid-cols-2 gap-12 items-center">
        <div>
          <h2 class="text-3xl sm:text-4xl font-bold text-foreground mb-6">
            About Ahente AI
          </h2>
          <p class="text-lg text-muted-foreground mb-6">
            Ahente AI is built for developers, researchers, and businesses who want to harness the power of artificial intelligence. 
            Our platform provides the tools and infrastructure needed to create sophisticated AI agents that can understand, learn, and interact with users naturally.
          </p>
          <p class="text-lg text-muted-foreground mb-8">
            Whether you're building a customer service chatbot, a research assistant, or a complex autonomous system, 
            Ahente AI provides the foundation you need to succeed.
          </p>
          <div class="flex space-x-4">
            <a href="#" class="text-primary hover:text-primary/80 transition-colors">
              <Github class="h-6 w-6" />
            </a>
            <a href="#" class="text-primary hover:text-primary/80 transition-colors">
              <Twitter class="h-6 w-6" />
            </a>
          </div>
        </div>
        
        <div class="bg-muted/30 rounded-lg p-8">
          <div class="space-y-4">
            <div class="flex items-center space-x-3">
              <div class="w-3 h-3 bg-green-500 rounded-full"></div>
              <span class="text-sm text-muted-foreground">AI Agent Online</span>
            </div>
            <div class="bg-card p-4 rounded border border-border">
              <p class="text-sm text-muted-foreground mb-2">Agent Response:</p>
              <p class="text-foreground">"Hello! I'm your AI assistant. How can I help you today?"</p>
            </div>
            <div class="flex space-x-2">
              <input type="text" placeholder="Type your message..." class="flex-1 px-3 py-2 border border-border rounded-md bg-background text-foreground placeholder:text-muted-foreground focus:outline-none focus:ring-2 focus:ring-primary" />
              <button class="px-4 py-2 bg-primary text-primary-foreground rounded-md hover:bg-primary/90 transition-colors">
                Send
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer id="contact" class="border-t border-border bg-muted/30">
    <div class="container mx-auto px-4 sm:px-6 lg:px-8 py-12">
      <div class="grid md:grid-cols-4 gap-8">
        <div>
          <div class="flex items-center space-x-2 mb-4">
            <Brain class="h-6 w-6 text-primary" />
            <span class="text-lg font-bold">Ahente AI</span>
          </div>
          <p class="text-muted-foreground">
            Building the future of AI development, one agent at a time.
          </p>
        </div>
        
        <div>
          <h3 class="font-semibold text-foreground mb-4">Product</h3>
          <ul class="space-y-2 text-muted-foreground">
            <li><a href="#" class="hover:text-foreground transition-colors">Features</a></li>
            <li><a href="#" class="hover:text-foreground transition-colors">Pricing</a></li>
            <li><a href="#" class="hover:text-foreground transition-colors">Documentation</a></li>
          </ul>
        </div>
        
        <div>
          <h3 class="font-semibold text-foreground mb-4">Company</h3>
          <ul class="space-y-2 text-muted-foreground">
            <li><a href="#" class="hover:text-foreground transition-colors">About</a></li>
            <li><a href="#" class="hover:text-foreground transition-colors">Blog</a></li>
            <li><a href="#" class="hover:text-foreground transition-colors">Careers</a></li>
          </ul>
        </div>
        
        <div>
          <h3 class="font-semibold text-foreground mb-4">Support</h3>
          <ul class="space-y-2 text-muted-foreground">
            <li><a href="#" class="hover:text-foreground transition-colors">Help Center</a></li>
            <li><a href="#" class="hover:text-foreground transition-colors">Contact</a></li>
            <li><a href="#" class="hover:text-foreground transition-colors">Status</a></li>
          </ul>
        </div>
      </div>
      
      <div class="border-t border-border mt-8 pt-8 text-center text-muted-foreground">
        <p>&copy; 2024 Ahente AI. All rights reserved.</p>
      </div>
    </div>
  </footer>
</div> 