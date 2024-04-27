--[[
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
─────────────────────────────────────────────────
https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

NOTE:
Rust LSP is maintained by https://github.com/mrcjkb/rustaceanvim
Typescript LSP is maintained by https://github.com/pmizio/typescript-tools.nvim
Dart/Flutter LSP is maintained by https://github.com/akinsho/flutter-tools.nvim
─────────────────────────────────────────────────
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--]]

local M = {}

M.setup = function(lspconfig)
	return {
		-- ["rust_analyzer"] = function()
		-- 	lspconfig.rust_analyzer.setup({
		-- 		settings = {
		-- 			["rust-analyzer"] = {
		-- 				diagnostics = { enable = true },
		-- 				checkOnSave = { enable = true },
		-- 			},
		-- 		},
		-- 	})
		-- end,

		-- ["cssls"] = function()
		-- 	lspconfig.cssls.setup({
		-- 		capabilities = { textDocument = { completion = { completionItem = { snippetSupport = true } } } },
		-- 	})
		-- end,

		-- ["lua_ls"] = function()
		-- 	lspconfig.lua_ls.setup({
		-- 		settings = {
		-- 			Lua = {
		-- 				diagnostics = {
		-- 					-- Get the language server to recognize the 'vim', 'use' global
		-- 					globals = { "vim", "use", "require" },
		-- 				},
		-- 				workspace = {
		-- 					-- Make the server aware of Neovim runtime files
		-- 					library = vim.api.nvim_get_runtime_file("", true),
		-- 					--  don't ask about working environment on every startup
		-- 					checkThirdParty = false,
		-- 				},
		-- 				-- Do not send telemetry data containing a randomized but unique identifier
		-- 				telemetry = { enable = false },
		-- 			},
		-- 		},
		-- 	})
		-- end,
	}
end

return M
