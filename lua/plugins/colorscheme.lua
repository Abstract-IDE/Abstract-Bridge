--[[
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
─────────────────────────────────────────────────
NOTE:
This config file is special. You can use it to install any colorscheme you like and set the colorscheme.
This will override the default colorscheme provided by Abstract.
You can delete this file to use the Abstract default colorscheme.
─────────────────────────────────────────────────
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--]]

local spec = {
	"Abstract-IDE/Abstract-cs",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
}

spec.config = function()
	pcall(vim.cmd, "colorscheme abscs")
	-- theme name
	vim.g.abscs_theme_name = "aqua"
end

return spec
