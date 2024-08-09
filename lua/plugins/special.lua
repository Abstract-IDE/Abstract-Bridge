--[[
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
─────────────────────────────────────────────────
NOTE:
This is a special config file. You can change the colorscheme, winbar, and statusbar here.
─────────────────────────────────────────────────
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--]]

local spec = {
	"Abstract-IDE/Abstract-cs",
	branch = "rewrite",

	dependencies = {
		"Abstract-IDE/abstract-line",
		{
			"Abstract-IDE/abstract-winbar",
			lazy = true,
			event = { "BufRead" },
			dependencies = { "SmiteshP/nvim-navic" },
		},
	},
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
}

spec.config = function()
	-- color scheme
	require("abstract_cs").setup({})

	-- status line
	require("abstract-line").setup()

	-- winbar
	require("abstract-winbar").setup({})
end

return spec
