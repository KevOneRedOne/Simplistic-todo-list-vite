# Todo List Application

This project is a simple Todo List application built using React, TypeScript,
and Vite. The application allows users to manage their tasks by adding,
removing, and marking them as completed. The project incorporates advanced React
concepts, including custom hooks, context API, and local storage for persistent
data.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/)

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/KevOneRedOne/Simplistic-todo-list-vite
   cd Simplistic-todo-list-vite
   ```

2. **Install dependencies:**

   ```bash
   npm install
   ```

3. **Run the application:**

   ```bash
   npm run dev
   ```

   Open your browser and navigate to `http://localhost:5173`.

## Commands

- **`npm run dev`**: Start the development server.
- **`npm run build`**: Build the application for production.
- **`npm run predeploy`**: Build the application for production.
- **`npm run deploy`**: Deploy the application to GitHub Pages.
- **`npm run preview`**: Preview the production build locally.
- **`npm run prepare`**: Install husky hooks.
- **`npm run lint`**: Lint the project using ESLint.
- **`npm run lint:fix`**: Lint the project using ESLint and fix issues.
- **`npm run type:check`**: Type-check the project using TypeScript.
- **`npm run type:check:watch`**: Type-check the project using TypeScript in
  watch mode.
- **`npm run prettier`**: Format the project using Prettier.
- **`npm run prettier:fix`**: Format the project using Prettier and fix issues.

## Project Structure

```
Simplistic-todo-list-vite/
├── public/
├── nginx/
├── src/
    ├── assets/           # Images and other assets
│   ├── components/       # React components
│   ├── context/          # Context API setup
│   ├── hooks/            # Custom hooks
│   ├── types/            # TypeScript types
│   ├── TodoList.tsx           # Main application component
│   ├── main.tsx          # Entry point
│   └── ...
├── .eslintrc.cjs          # ESLint configuration
├── .prettier.cjs          # Prettier configuration
├── tsconfig.json         # TypeScript configuration
├── vite.config.ts        # Vite configuration
└── package.json          # Project metadata and scripts
```

## Features

- **Add Tasks**: Users can input tasks and add them to their list.
- **Remove Tasks**: Users can delete tasks from the list.
- **Toggle Completion**: Users can mark tasks as completed or uncompleted.
- **Filter Tasks**: Users can filter tasks based on their completion status.
- **Persistent Storage**: Tasks are saved in the local storage of the browser,
  ensuring they persist across page reloads.

## Advanced Techniques

### Custom Hooks

- **`useTasks`**: Manages task states, including adding, removing, and toggling
  tasks.

### Performance Optimization

- **`useMemo`**: Used to memoize the filtered list of tasks, improving
  performance by reducing unnecessary recalculations.
- **`useCallback`**: Functions for managing tasks are memoized to prevent
  unnecessary re-renders.

### Context API

- **`TasksContext`**: Shares task management functions and the tasks array
  across components.

### Local Storage

- Tasks are loaded from and saved to local storage using `useEffect`, providing
  a persistent user experience.

## ESLint, Prettier and vsCode settings Configurations

To maintain a clean codebase, the project uses ESLint, Prettier and the VsCode
settings for linting. You can expand the configuration file to adjust rules:

1. **Configuration in `.eslintrc.cjs`:**

   ```javascript
   module.exports = {
     env: {
       browser: true,
       es2021: true,
       node: true,
     },
     extends: [
       'airbnb',
       'airbnb-typescript',
       'airbnb/hooks',
       'plugin:react/recommended',
       'plugin:@typescript-eslint/recommended',
       'plugin:prettier/recommended',
     ],
     overrides: [],
     parser: '@typescript-eslint/parser',
     parserOptions: {
       ecmaVersion: 'latest',
       sourceType: 'module',
       project: './tsconfig.json',
       ecmaFeatures: {
         jsx: true,
       },
     },
     plugins: ['react', '@typescript-eslint', 'prettier'],
     rules: {
       'react/react-in-jsx-scope': 'off',
       'prettier/prettier': [
         'error',
         {
           endOfLine: 'auto',
         },
       ],
       semi: ['error', 'always'],
     },
     settings: {
       react: {
         version: 'detect',
       },
     },
   };
   ```

2. **Configuration in `.prettier.cjs`:**

   ```javascript
   module.exports = {
     trailingComma: 'es5',
     tabWidth: 2,
     semi: true,
     singleQuote: true,
     printWidth: 80,
     proseWrap: 'always',
     bracketSpacing: true,
     arrowParens: 'avoid',
     endOfLine: 'lf',
     jsxSingleQuote: false,
     quoteProps: 'as-needed',
     htmlWhitespaceSensitivity: 'strict',
     insertPragma: false,
     requirePragma: false,
     vueIndentScriptAndStyle: false,
     embeddedLanguageFormatting: 'auto',
   };
   ```

3. **Configuration in vscode settings.json:**
   ```json
   {
     "editor.formatOnSave": false,
     "editor.tabSize": 4,
     "files.autoSave": "onFocusChange",
     "javascript.validate.enable": false,
     "eslint.enable": true,
     "eslint.run": "onSave",
     "prettier.requireConfig": true,
     "prettier.singleQuote": true,
     "prettier.trailingComma": "all",
     "prettier.arrowParens": "avoid",
     "prettier.printWidth": 80,
     "eslint.validate": ["javascript", "typescript", "typescriptreact"],
     "eslint.options": {
       "configFile": ".eslintrc.cjs"
     }
   }
   ```
