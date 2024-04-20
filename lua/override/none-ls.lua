local M = {}

M.setup = function(null, installed_packages)
	local sources = {}
	-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
	-- local formatting = null.builtins.formatting
	-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/completion
	-- local completion = null.builtins.completion
	-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
	-- local diagnostics = null.builtins.diagnostics
	-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
	-- local code_actions = null.builtins.code_actions

	-- for _, package in pairs(installed_packages) do
	-- 	-- Extend sources list here
	-- 	-- Examples:
	-- 	if package == "stylua" then
	-- 		sources[#sources + 1] = formatting.stylua.with({
	-- 			command = "stylua",
	-- 			args = {
	-- 				"--search-parent-directories",
	-- 				"--stdin-filepath",
	-- 				"$FILENAME",
	-- 				"-",
	-- 			},
	-- 		})
	-- 	end
	-- 	if package == "black" then
	-- 		sources[#sources + 1] = formatting.black.with({
	-- 			command = "black",
	-- 			args = { "--quiet", "--fast", "-" },
	-- 		})
	-- 	end
	-- end

	return sources
end

return M
