-- import gitsigns plugin safely
local gitsigns_setup, gitsigns = pcall(require, "gitsigns")
if not gitsigns_setup then
	return
end

-- configure/enable gitsigns
gitsigns.setup()
