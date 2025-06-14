local conform_setup, conform = pcall(require, "conform")
-- exit if not configured then exit
if not conform_setup then
	return
end
-- setup the formatters (NOTE: make sure each of these are installed by Mason before using them)
conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		rust = { "rustfmt" },
		javascript = { "prettier" },
		c = { "clang-format" },
		go = { "gofumpt" },
		markdown = { "prettier" },
		json = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		typescript = { "prettier" },
	},
	-- format_on_save = {
	-- 	-- default options for fomrat on save enable
	-- 	timeout_ms = 1000,
	-- 	lsp_format = "fallback",
	-- },
	-- sets a special keybind to exec formatter
	-- using <space>fm
	vim.keymap.set({ "n", "v" }, "<leader>fm", function()
		conform.format({
			lsp_fallback = false,
			async = false,
			timeout_ms = 1000,
		})
	end),
})
