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

M.setup = function(set_lspconfig)
	local server_config = {}

	server_config.toolchain_server = {
		-- ["sourcekit"] = {
		-- 	executable = "swift",
		-- 	config = {
		-- 		capabilities = {
		-- 			workspace = {
		-- 				didChangeWatchedFiles = {
		-- 					dynamicRegistration = true,
		-- 				},
		-- 			},
		-- 		},
		-- 	},
		-- },
	}

	server_config.installed_server = {

		-- ["cssls"] = function()
		-- 	set_lspconfig("cssls", {
		-- 		capabilities = { textDocument = { completion = { completionItem = { snippetSupport = true } } } },
		-- 	})
		-- end,

		-- ["pyright"] = function()
		-- 	set_lspconfig("pyright", {
		-- 		settings = {
		-- 			python = {
		-- 				analysis = {
		-- 					autoSearchPaths = true,
		-- 					-- diagnosticMode = "workspace", -- options: "workspace" | "openFilesOnly"
		-- 					useLibraryCodeForTypes = true,
		-- 				},
		-- 			},
		-- 		},
		-- 	})
		-- end,
	}

	return server_config
end

return M
