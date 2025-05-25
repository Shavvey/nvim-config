--import core lua files to init
require("main.plugins-setup")

-- core settings and keymaps
require("main.core.options")
require("main.core.keymaps")

-- colorscheme and other aesthetic config stuff
require("main.core.colorscheme")

-- some more personal configuration of plugins
require("main.plugins.comment")
require("main.plugins.nvim-tree")
require("main.plugins.lualine")
require("main.plugins.nvim-cmp")
require("main.plugins.autopairs")
require("main.plugins.gitsigns")
require("main.plugins.treesitter")
require("main.plugins.toggleterm")

-- adding lsp support
require("main.plugins.lsp.lsp-config")
