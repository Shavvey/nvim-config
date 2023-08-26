--setting my leader key to be space
vim.g.mapleader = " "
-- storing this in a local var to be more concise
local keymap = vim.keymap
--==GENERAL KEYMAPS==
--use jj to exit insert mode
keymap.set("i", "jk", "<ESC>")
--new keymap for filing saving, similar to what a have for emacs
keymap.set("n", "<leader>fs", ":w<CR>")
-- clear search highlights
keymap.set("n", "<leader>hj", ":nohl<CR>")
--quit out nvim
--just forces a quit out of all currently open files inside nvim
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
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>sf", "<cmd>Telescope live_grep<CR>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<CR>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<CR>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
-- toggle term keymap
keymap.set("n", "<leader>nt", ":ToggleTerm<CR>")
-- lazy git launch, silent call
keymap.set("n", "<leader>gg", ":LazyGit<CR>", { noremap = true, silent = true })
