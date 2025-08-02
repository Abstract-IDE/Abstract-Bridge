local M = {}

M.sources = function(nullls)
	-- -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
	-- local formatting = null.builtins.formatting
	-- -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/completion
	-- local completion = null.builtins.completion
	-- -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
	-- local diagnostics = null.builtins.diagnostics
	-- -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
	-- local code_actions = null.builtins.code_actions

	local sources = {
		-- formatting.stylua.with({
		-- 	command = "stylua",
		-- 	args = {
		-- 		"--search-parent-directories",
		-- 		"--stdin-filepath",
		-- 		"$FILENAME",
		-- 		"-",
		-- 	},
		-- }),
		-- formatting.black.with({
		-- 	command = "black",
		-- 	args = { "--quiet", "--fast", "-" },
		-- }),
	}

	return sources
end

return M
