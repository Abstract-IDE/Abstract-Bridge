-- ─────────────────────────────────────────────────
-- WARNING: This snippet must be placed at the top of init.lua.
-- ─────────────────────────────────────────────────
if vim.g.ABSTRACT_LOADED == nil then
	local abstract_path = "/home/sh4h1d/codeDNA/dev/Projects/neovim/Abstract"
	-- local abstract_path = vim.fn.stdpath("data") .. "/Abstract"
	if not (vim.uv or vim.loop).fs_stat(abstract_path) then
		vim.fn.system({ "git", "clone", "https://github.com/Abstract-IDE/Abstract", "--branch=rewrite", abstract_path })
	end
	vim.opt.rtp:prepend(abstract_path)
	require("abstract").setup(abstract_path)
end
if vim.g.ABSTRACT_LOADED then
	return
end
-- ─────────────────────────────────────────────────


-- everything else goes below

-- vim.g.mapleader = "|"
