<!-- The Amazing Neovim Configuration -->

<h1 align="center">The Amazing Neovim Setup</h1>

<p align="center">
  <samp>
    A minimal and efficient Neovim configuration built in Lua.<br>
    Designed for speed, clarity, and focus — with a Gruvbox dark aesthetic.
  </samp>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Built%20with-Lua-D79921?style=for-the-badge&logo=lua&logoColor=white" />
  <img src="https://img.shields.io/badge/Editor-Neovim%200.10+-689d6a?style=for-the-badge&logo=neovim&logoColor=white" />
  <img src="https://img.shields.io/badge/Theme-Gruvbox%20Dark-282828?style=for-the-badge&logoColor=white" />
</p>

---

### About
This repository contains my Neovim configuration, fully written in Lua and organized in a modular structure.  
It focuses on maintaining a fast and clean development environment while providing modern features like LSP, Treesitter, Telescope, and Git integration.

---

### Core Plugins
All plugin configurations are organized under `/lua/plugins/` for better maintainability.

| Category | Modules | Description |
|-----------|----------|-------------|
| **Editing** | `autopairs.lua`, `snippets.lua`, `undo.lua` | Autopairs, snippet expansion, undo management |
| **UI / UX** | `lualine.lua`, `ui.lua`, `toggleterm.lua`, `nvim-tree.lua` | Statusline, terminal integration, file explorer |
| **Code / LSP** | `cmp.lua`, `lsp.lua`, `treesitter.lua`, `typr.lua` | Completion, LSP setup, syntax highlighting |
| **Git** | `gitsigns.lua`, `lazygit.lua` | Git signs and terminal client integration |
| **Productivity** | `telescope.lua`, `telekasten.lua`, `netrw.lua` | Fuzzy finder, note management, file navigation |
| **Core Logic** | `editor.lua` | General settings, mappings, and editor behavior |

---

### Features
- Fully Lua-based configuration
- Lazy loading and modular architecture
- Optimized startup and plugin management
- Treesitter-powered syntax highlighting
- Built-in LSP and autocompletion setup
- Seamless terminal and Git integration
- Consistent Gruvbox Dark color scheme

---

### Installation
Clone this repository into your Neovim configuration directory:

```bash
git clone https://github.com/JuanPS999/nvim ~/.config/nvim
```

Then open Neovim and allow lazy.nvim to install and configure all dependencies automatically.

---

### Philosophy
> “Tools should disappear between you and your thoughts.”

A configuration that prioritizes flow and simplicity — minimal distractions, maximum focus.

---

<p align="center"> <img src="https://capsule-render.vercel.app/api?type=rect&color=282828&height=1&section=header&reversal=false"/> </p> <p align="center"> <samp> Maintained by <b>Juan Prado</b> • <a href="mailto:juanprs077@gmail.com">juanprs077@gmail.com</a> </samp> </p>

---
