# Contributing to ahente-ai

Thank you for your interest in contributing to ahente-ai! This document provides guidelines and information for contributors.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Development Setup](#development-setup)
- [Pull Request Process](#pull-request-process)
- [Coding Standards](#coding-standards)
- [Testing](#testing)
- [Documentation](#documentation)
- [Reporting Bugs](#reporting-bugs)
- [Feature Requests](#feature-requests)

## Code of Conduct

By participating in this project, you are expected to uphold our Code of Conduct:

- Be respectful and inclusive of all contributors
- Use welcoming and inclusive language
- Be collaborative and open to constructive feedback
- Focus on what is best for the community
- Show empathy towards other community members

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check the issue list as you might find out that you don't need to create one. When you are creating a bug report, please include as many details as possible:

- **Use a clear and descriptive title**
- **Describe the exact steps which reproduce the problem**
- **Provide specific examples to demonstrate the steps**
- **Describe the behavior you observed after following the steps**
- **Explain which behavior you expected to see instead and why**
- **Include details about your configuration and environment**

### Suggesting Enhancements

If you have a suggestion for a new feature or enhancement, please:

- **Use a clear and descriptive title**
- **Provide a step-by-step description of the suggested enhancement**
- **Provide specific examples to demonstrate the steps**
- **Describe the current behavior and explain which behavior you expected to see instead**

### Pull Requests

- Fork the repo and create your branch from `main`
- If you've added code that should be tested, add tests
- If you've changed APIs, update the documentation
- Ensure the test suite passes
- Make sure your code follows the existing code style
- Issue that pull request!

## Development Setup

### Prerequisites

- Node.js (version 18 or higher)
- npm or yarn
- Git

### Local Development

1. **Fork and clone the repository**
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
   Navigate to [http://localhost:5173](http://localhost:5173)

### Available Scripts

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

# Format code with Prettier
npm run format
```

## Pull Request Process

1. **Update the README.md** with details of changes to the interface, if applicable
2. **Update the CHANGELOG.md** with a note describing your changes
3. **The PR will be merged once you have the sign-off** of at least one other developer

### Pull Request Guidelines

- **Use conventional commit messages** (e.g., `feat: add new feature`, `fix: resolve bug`)
- **Keep PRs focused** - one feature or bug fix per PR
- **Write clear commit messages** that explain what and why, not how
- **Include tests** for new features when possible
- **Update documentation** if you're changing APIs or adding features

## Coding Standards

### TypeScript

- Use TypeScript for all new code
- Add proper type annotations
- Avoid using `any` type - use proper types instead
- Use interfaces for object shapes
- Use enums for constants

### Svelte/SvelteKit

- Use Svelte 5 syntax when possible
- Follow SvelteKit conventions for file naming and structure
- Use TypeScript in Svelte files (`<script lang="ts">`)
- Keep components small and focused
- Use props for component communication

### CSS/Styling

- Use Tailwind CSS utility classes
- Follow the existing design system
- Use CSS custom properties for theming
- Keep styles responsive and accessible

### Code Style

- Use 2 spaces for indentation
- Use semicolons
- Use single quotes for strings
- Use camelCase for variables and functions
- Use PascalCase for components and classes
- Use kebab-case for file names

## Testing

### Writing Tests

- Write tests for new features
- Write tests for bug fixes
- Use descriptive test names
- Test both success and error cases
- Keep tests simple and focused

### Running Tests

```bash
# Run all tests
npm test

# Run tests in watch mode
npm run test:watch

# Run tests with coverage
npm run test:coverage
```

## Documentation

### Code Documentation

- Add JSDoc comments for functions and classes
- Document complex logic with inline comments
- Keep comments up to date with code changes

### User Documentation

- Update README.md for user-facing changes
- Add examples for new features
- Keep installation and setup instructions current

## Reporting Bugs

### Before Submitting

1. **Check existing issues** - Your bug might already be reported
2. **Try the latest version** - The bug might have been fixed
3. **Check the documentation** - The solution might be documented

### Bug Report Template

```markdown
**Describe the bug**
A clear and concise description of what the bug is.

**To Reproduce**
Steps to reproduce the behavior:
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

**Expected behavior**
A clear and concise description of what you expected to happen.

**Screenshots**
If applicable, add screenshots to help explain your problem.

**Environment:**
 - OS: [e.g. macOS, Windows, Linux]
 - Browser: [e.g. Chrome, Safari, Firefox]
 - Version: [e.g. 22]
 - Node.js version: [e.g. 18.0.0]

**Additional context**
Add any other context about the problem here.
```

## Feature Requests

### Before Submitting

1. **Check existing issues** - Your feature might already be requested
2. **Check the roadmap** - It might already be planned
3. **Consider the scope** - Is it within the project's goals?

### Feature Request Template

```markdown
**Is your feature request related to a problem? Please describe.**
A clear and concise description of what the problem is.

**Describe the solution you'd like**
A clear and concise description of what you want to happen.

**Describe alternatives you've considered**
A clear and concise description of any alternative solutions or features you've considered.

**Additional context**
Add any other context or screenshots about the feature request here.
```

## Getting Help

If you need help with contributing:

- **Check the documentation** - Start with the README and this guide
- **Search existing issues** - Your question might already be answered
- **Ask in discussions** - Use GitHub Discussions for general questions
- **Join the community** - Connect with other contributors

## Recognition

Contributors will be recognized in:

- The project README
- Release notes
- GitHub contributors page

Thank you for contributing to ahente-ai! 🚀 