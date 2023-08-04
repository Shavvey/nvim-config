--init local variable for vim options
local opt = vim.opt --just trying to be concise ;)
--line number
opt.number = true
--relative numbering for weirdos
opt.relativenumber = true
-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
--line wrapping
opt.wrap = false
--search settings
opt.ignorecase = true
opt.smartcase = true
--cursor line
opt.cursorline = true
--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
--backspace, make it work!
opt.backspace = "indent,eol,start"
--clipboard, use system clipboard!
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.iskeyword:append("-")
