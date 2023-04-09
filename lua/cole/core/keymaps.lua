--setting my leader key to be space
vim.g.mapleader = " "

local keymap = vim.keymap
--==GENERAL KEYMAPS==
-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
--new keymap for filing saving, similar to what a have for emacs
keymap.set("n", "<leader>sf", ":w<CR>")
-- clear search highlights
keymap.set("n", "<leader>hj", ":nohl<CR>")
--quit out nvim
keymap.set("n", "<leader>qq", ":qa<CR>")
-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement
-- window management
keymap.set("n", "<leader>wv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>ws", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>wc", ":close<CR>") -- close current split window
keymap.set("n", "<leader>ww", "<C-w>w") -- swtich window?
--window switching
keymap.set("n", "<leader>wh", "<C-w>h") -- goto window right
keymap.set("n", "<leader>wj", "<C-w>j") -- goto window below
keymap.set("n", "<leader>wk", "<C-w>k") -- goto window above
keymap.set("n", "<leader>wl", "<C-w>l") -- goto window left
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tc", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

--==PLUGINS KEYMAPS==
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
-- nvim-tree
keymap.set("n", "<leader>.", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
keymap.set("n", "<leader>po", ":NvimTreeFindFile<CR>")
-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
-- toggle term keymap
keymap.set("n", "<leader>nt", ":ToggleTerm<CR>")
