# ahente-ai

Speed up your development process by using AI agents for your software company.

Ahente AI is a modern web application that helps software development teams leverage AI agents to streamline their development workflow. Built with SvelteKit and TypeScript, it provides a GitHub-style dashboard interface for managing AI agents, chat interactions, task management, and version control.

## Features

- 🤖 **AI Agent Management** - Create and manage specialized AI agents for different roles (PM, Backend Developer, etc.)
- 💬 **Chat Interface** - Interact with your AI agents through an intuitive chat interface
- ✅ **Task Management** - Organize and track development tasks with Kanban-style boards
- 🔄 **Version Control** - Track changes and manage versions of your AI agents
- 🌙 **Dark Mode** - Toggle between light and dark themes with system preference detection
- 📱 **Responsive Design** - Works seamlessly on desktop, tablet, and mobile devices
- 🔌 **Online Status** - Real-time online/offline status indicator

## Tech Stack

- **Framework:** [SvelteKit](https://kit.svelte.dev/) - Full-stack web framework
- **Language:** [TypeScript](https://www.typescriptlang.org/) - Type-safe JavaScript
- **Styling:** [Tailwind CSS](https://tailwindcss.com/) - Utility-first CSS framework
- **Icons:** [Lucide](https://lucide.dev/) - Beautiful & consistent icon toolkit
- **Build Tool:** [Vite](https://vitejs.dev/) - Fast build tool and dev server

## Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) (version 18 or higher)
- [npm](https://www.npmjs.com/) or [yarn](https://yarnpkg.com/)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/ahente-ai.git
   cd ahente-ai
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start the development server**
   ```bash
   npm run dev
   ```

4. **Open your browser**
   Navigate to [http://localhost:5173](http://localhost:5173) to view the application.

### Development Commands

```bash
# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview

# Check for TypeScript errors
npm run check

# Run linting
npm run lint
```

## Project Structure

```
ahente-ai/
├── src/
│   ├── app.css          # Global styles and Tailwind CSS
│   ├── app.d.ts         # TypeScript declarations
│   ├── app.html         # HTML template
│   ├── lib/             # Shared utilities and components
│   └── routes/          # SvelteKit routes
│       ├── +layout.svelte  # Root layout
│       └── +page.svelte    # Home page with dashboard
├── static/              # Static assets
├── tailwind.config.js   # Tailwind CSS configuration
├── postcss.config.js    # PostCSS configuration
├── svelte.config.js     # SvelteKit configuration
├── vite.config.ts       # Vite configuration
└── package.json         # Dependencies and scripts
```

## Contributing

We welcome contributions from the community! Here's how you can help:

### How to Contribute

1. **Fork the repository**
   ```bash
   git clone https://github.com/yourusername/ahente-ai.git
   cd ahente-ai
   ```

2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make your changes**
   - Follow the existing code style
   - Add TypeScript types where appropriate
   - Update documentation if needed

4. **Test your changes**
   ```bash
   npm run dev
   npm run check
   npm run lint
   ```

5. **Commit your changes**
   ```bash
   git add .
   git commit -m "feat: add your feature description"
   ```

6. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

7. **Create a Pull Request**
   - Go to the original repository
   - Click "New Pull Request"
   - Select your feature branch
   - Provide a clear description of your changes

### Development Guidelines

- **Code Style:** Follow the existing code style and use Prettier for formatting
- **TypeScript:** Use TypeScript for all new code and add proper type annotations
- **Components:** Create reusable components in the `src/lib` directory
- **Testing:** Add tests for new features when possible
- **Documentation:** Update README.md and add JSDoc comments for new functions

### Issue Reporting

Before creating an issue, please:

1. Check if the issue has already been reported
2. Use the issue template and provide detailed information
3. Include steps to reproduce the problem
4. Specify your environment (OS, Node.js version, browser)

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

### MIT License Summary

- ✅ **Commercial use** - You can use this software for commercial purposes
- ✅ **Modification** - You can modify the software
- ✅ **Distribution** - You can distribute the software
- ✅ **Private use** - You can use and modify the software without distributing it
- ❌ **Liability** - The software is provided without warranty
- ❌ **Warranty** - The software is provided "as is"

**Attribution Requirement:** When redistributing this software, you must include the original license and copyright notice, giving credit to the original repository.

## Acknowledgments

- [SvelteKit](https://kit.svelte.dev/) for the amazing full-stack framework
- [Tailwind CSS](https://tailwindcss.com/) for the utility-first CSS framework
- [Lucide](https://lucide.dev/) for the beautiful icons
- [GitHub](https://github.com/) for the design inspiration

## Support

If you need help or have questions:

- 📖 **Documentation:** Check the code comments and this README
- 🐛 **Issues:** Report bugs on [GitHub Issues](https://github.com/yourusername/ahente-ai/issues)
- 💬 **Discussions:** Join the conversation on [GitHub Discussions](https://github.com/yourusername/ahente-ai/discussions)

---

**Made with ❤️ by the ahente-ai community**
