-- load mason itself using a protected call
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

-- load lspconfig
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end
-- load null ls
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason.setup()

-- configure lsp config on autostart
mason_lspconfig.setup({
	ensure_installed = {
		"ts_ls",
		"html",
		"cssls",
		"tailwindcss",
		"lua_ls",
		"clangd",
		"pyright",
		"rust_analyzer",
		"html",
	},
})
mason_null_ls.setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"eslint_d",
		"markdownlint",
		"cpplint",
		"yamlint",
		"rustfmt",
	},
})
