local M = {}

-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
M.formatting = {
	["luaformatter"] = {
		lua_format = {
			command = "lua-format",
			args = {
				"--indent-width",
				"1",
				"--tab-width",
				"4",
				"--use-tab",
				"--chop-down-table",
				"--extra-sep-at-table-end",
			},
		},
	},
}

M.diagnostics = {}
M.code_actions = {}
M.completion = {}
M.hover = {}
return M
