-- set colorscheme to nightfly with protected call
-- in case it isn't installed

local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
	print("Colorscheme not found!")
	-- print error if colorscheme not installed
	return
end
-- load spelling mistakes preferences after colorscheme has loaded
vim.cmd([[
highlight SpellBad guisp=White gui=Underline
]])
vim.o.guifont = "FiraCode Nerd Font Mono:h18"
