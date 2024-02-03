-- ─────────────────────────────────────────────────
-- WARNING: this snippet must on top of init.lua
-- ─────────────────────────────────────────────────
if vim.g.ABSTRACT_LOADED == nil then
	local abstract_path = "/home/lazy/codeDNA/dev/Projects/neovim/Abstract"
	vim.opt.rtp:prepend(abstract_path)
	require("abstract").setup()
end
if vim.g.ABSTRACT_LOADED then
	return
end
-- ─────────────────────────────────────────────────


-- vim.g.mapleader = "|"
