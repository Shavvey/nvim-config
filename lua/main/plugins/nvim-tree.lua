local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end
-- recommend setttings from nvim-tree docs
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.g.nvim_tree_show_icons = {
	folders = 0,
	files = 0,
	git = 0,
	folder_arrows = 0,
}
-- configure nvim-tree
nvimtree.setup({

	git = {
		enable = true,
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
