local mason_setup, mason = pcall(require, "mason")
if not mason_setup then
  return
end
-- setup mason first
mason.setup()

local mason_lspconfig_setup, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_setup then
  return
end

-- bridges the gap so that lsp config can find lsp servers managed by mason
mason_lspconfig.setup()

-- set up lsp keymaps
local keymap = vim.keymap
local opts = {}
-- set keybindings
keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- goto declaration
keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- see definition and make edits in window
keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- go to implementation
keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- go to type definition
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
keymap.set("n", "<leader>rn", ":IncRename ", opts) -- smart rename
keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line
keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
-- enable lua lsp, with default config from lsp-config
vim.lsp.enable('luals')

