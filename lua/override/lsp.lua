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

-- A list of servers to automatically install if they're not already installed.
--Example: { "rust_analyzer@nightly", "lua_ls" }
---@type string[]
M.ensure_installed = {
	"bashls",
	"cssls",
	"eslint",
	"html",
	"jsonls",
	"lua_ls",
	"basedpyright",
	"ts_ls",
}

-- LSP configs
---@type table<string,vim.lsp.Config>
M.configs = {
	-- ["sourcekit"] = {
	-- 	capabilities = {
	-- 		workspace = {
	-- 			didChangeWatchedFiles = {
	-- 				dynamicRegistration = true,
	-- 			},
	-- 		},
	-- 	},
	-- },

	-- ["cssls"] = {
	-- 	capabilities = {
	-- 		textDocument = { completion = { completionItem = { snippetSupport = true } } },
	-- 	},
	-- },

	-- ["pyright"] = {
	-- 	settings = {
	-- 		python = {
	-- 			analysis = {
	-- 				autoSearchPaths = true,
	-- 				-- diagnosticMode = "workspace", -- options: "workspace" | "openFilesOnly"
	-- 				useLibraryCodeForTypes = true,
	-- 			},
	-- 		},
	-- 	},
	-- },
}

return M
