if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd
--set background = light
require("config.lazy")
--require("colors.lua")
vim.o.background = "light"
