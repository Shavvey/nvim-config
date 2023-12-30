-- Supress warning message for multiple different client offsets, I dont care about this
local notify = vim.notify
vim.notify = function(msg, ...)
	-- matched message against this one
	if msg:match("warning: multiple different client offset_encodings") then
		-- do nothing if match is met
		return
	end

	notify(msg, ...)
end
