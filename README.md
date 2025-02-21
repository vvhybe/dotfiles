# My Neovim Dotfiles

This repository contains my Neovim configuration, which I built after switching from **VSCode** to **Neovim**. It’s designed to be **minimal**, **modular**, and **highly customizable**, while replicating the key features I loved in VSCode.

---

## **Why I Switched from VSCode to Neovim**

I switched to Neovim for the following reasons:
1. **Performance**: Neovim is faster and lighter, especially for large projects.
2. **Terminal-Centric Workflow**: I wanted to integrate my editor with terminal tools like `lazygit`, `lazydocker`, and `Zellij`.
3. **Customizability**: Neovim allows me to tailor every aspect of my editor to my workflow.
4. **Minimalism**: I wanted to focus on productivity without the bloat of a full IDE.

---

## **What Are These Dotfiles?**

These dotfiles are my personal Neovim configuration, built on top of [LazyVim](https://www.lazyvim.org/). They include:
- **Git Integration**: Using `gitsigns.nvim`, `vim-fugitive`, and `lazygit.nvim`.
- **LSP Support**: Full Language Server Protocol (LSP) support with `nvim-lspconfig` and `mason.nvim`.
- **Theming**: Easy switching between themes like `gruvbox`, `onedark`, and `tokyonight`.
- **File Explorer**: Powered by `telescope.nvim` for fuzzy finding and file navigation.
- **Diagnostics**: Enhanced diagnostics with `trouble.nvim`.
- **Syntax Highlighting**: Powered by `nvim-treesitter`.
- **UI Enhancements**: Custom status line with `lualine.nvim` and a minimal starter screen with `mini-starter`.

---

## **How I Organized and Scaled My Dotfiles**

To keep my configuration clean and maintainable, I organized it into **modular categories**:

```plaintext
lua/
  plugins/
    git/            # Git-related plugins
    lsp/           # LSP and language server configurations
    theme/         # Colorschemes and themes
    diagnostics/   # Diagnostics and error handling
    file_explorer/ # File navigation tools
    syntax/        # Syntax highlighting and parsing
    ui/           # UI enhancements and statusline
```

### **Key Principles**
1. **Modularity**: Each plugin has its own file, making it easy to locate and modify.
2. **Scalability**: Adding new plugins or categories is straightforward.
3. **Readability**: The structure is intuitive and easy to navigate.
4. **Maintainability**: Changes to one plugin don’t affect others, and debugging is easier.

---

## **How to Use These Dotfiles**

### **Prerequisites**
- **Neovim** (v0.9.5 or higher)
- **Git**
- A terminal emulator (I use [Ghostty](https://github.com/Ghostty))
- [Zellij](https://zellij.dev/) (optional but recommended for terminal multiplexing)

### **Installation**
1. Clone this repository into your `~/.config/nvim` directory:

```bash
   git clone https://github.com/your-username/your-repo.git ~/.config/nvim
```
2. Install the plugins:

Open Neovim:
```bash
   nvim
```

Run :Lazy sync to install all plugins.

### Keybindings

Here are some keybindings to get started:

| Keybinding | Description |
|------------|------------- |
| <leader>gg | Open LazyGit |
| <leader>fp | Find files with Telescope |
| <leader>fd | Find diagnostics with Trouble |
| <leader>ft | Open file tree |
| <leader>th | Switch themes |

For a full list of keybindings, check the respective plugin files or run `:Telescope keymaps`.

### Customization

#### Themes

Themes are stored in `lua/plugins/theme/`. To switch themes:

1. Open `lua/plugins/theme/init.lua`.
2. Comment out the current theme and uncomment the desired one.
3. Restart Neovim or run `:Lazy sync`.

#### Adding Plugins

To add a new plugin:

1. Create a new file in the appropriate category folder (e.g., lua/plugins/syntax/new_plugin.lua).
2. Add the plugin configuration to the file
3. Reference the file in the category's init.lua.

### Why This Setup Works for Me

This setup strikes the perfect balance between functionality and simplicity. It’s fast, modular, and tailored to my workflow. By organizing my dotfiles into logical categories, I’ve made them easy to maintain and scale as my needs evolve.

## Feedback

If you have any suggestions or improvements, feel free to open an issue or submit a pull request. Happy coding! 🚀


---

### **Key Highlights** 🌟

1. **Personal Touch**: Focuses on **your journey** and **why** you made the switch.
2. **Clear Structure**: Explains **what** your dotfiles are and **how** they’re organized.
3. **Modularity**: Highlights the **scalability** and **maintainability** of your setup.
4. **User-Friendly**: Provides clear instructions for installation and customization.
5. **Minimalist**: Avoids unnecessary details, keeping the README concise and to the point.

---

### **Next Steps**

1. Replace `your-username` and `your-repo` in the installation instructions with your actual GitHub username and repository name.
2. Push your dotfiles to GitHub.
3. Share your repository with others and enjoy your clean, modular Neovim setup!

This README reflects your personal journey and setup, making it unique and relatable. Great job on organizing your dotfiles! 🎉
