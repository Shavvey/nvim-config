local mason_setup, mason = pcall(require, "mason")
if not mason_setup then
  return
end

mason.setup()

local mason_lspconfig_setup, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_setup then
  return
end

mason_lspconfig.setup()


vim.lsp.enable('luals')

