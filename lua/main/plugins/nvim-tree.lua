local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end
-- recommend setttings from nvim-tree docs
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.g.nvim_tree_show_icons = {
	folders = 1,
	files = 0,
	git = 1,
	folder_arrows = 1,
}

local config = {
	renderer = {
		icons = {
			show = {
				folder = false,
				folder_arrow = true,
			},
		},
	},
}
-- configure nvim-tree
nvimtree.setup(config)
