# Personal Neonvim Config

Personal neovim configuration that I use right now.
I lot of this stuff was pinched from another [repository](https://github.com/josean-dev/dev-environment-files),
so you should probably just check that one out if you like this one

## File Structure

This is the general file structure for the nvim config

```
└── main
├── core
│   ├── colorscheme.lua
│   ├── keymaps.lua
│   ├── notify.lua
│   └── options.lua
├── plugins
│   ├── autopairs.lua
│   ├── comment.lua
│   ├── gitsigns.lua
│   ├── lazygit.lua
│   ├── lsp
│   │   ├── lspconfig.lua
│   ├── lualine.lua
│   ├── nvim-cmp.lua
│   ├── nvim-tree.lua
│   ├── telescope.lua
│   ├── toggleterm.lua
│   └── treesitter.lua
└── plugins-setup.lua
```

After the top-level directory `main`, the config is divided into two main sections:

- `core`: contains main keymaps, defaults, and configured colorscheme.
- `plugins`: contains all plugins and is further subdivided into `lsp`,
  which configures all formatters, parsers, linters, and language servers
