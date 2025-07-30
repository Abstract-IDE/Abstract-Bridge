--[[
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
─────────────────────────────────────────────────
NOTE:
This is a special config file.
You can change the colorscheme, winbar, and statusbar here.
─────────────────────────────────────────────────
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--]]

local spec = {
	dependencies = {},
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
}

-- local your_colorscheme = {
-- 	"folke/tokyonight.nvim",
-- 	opts = {},
-- }
-- spec = vim.tbl_extend("keep", spec, your_colorscheme)
local abstract_cs = require("abstract.plugins.abstract-cs")
spec = vim.tbl_extend("keep", spec, abstract_cs)

local abstract_line = require("abstract.plugins.abstract-line")
local dropbar = require("abstract.plugins.dropbar")

spec.dependencies = vim.list_extend(spec.dependencies, {
	abstract_line,
	dropbar,
	-- {
	-- 	"someother/plugin",
	-- },
})

spec.config = function()
	abstract_cs.setup({}) -- Color scheme
	abstract_line.setup() -- Status line
	dropbar.setup().apply(dropbar.setup().config) -- Winbar
end

return spec
