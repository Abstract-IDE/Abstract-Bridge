-- ─────────────────────────────────────────────────
-- WARNING: This snippet must be placed at the top of init.lua.
-- ─────────────────────────────────────────────────
if ABSTRACT == nil then
	local abstract_path = vim.fn.stdpath("data") .. "/Abstract"
	if not (vim.uv or vim.loop).fs_stat(abstract_path) then
		vim.fn.system({ "git", "clone", "https://github.com/Abstract-IDE/Abstract", "--branch=rewrite", abstract_path })
	end
	vim.opt.rtp:prepend(abstract_path)
	require("abstract").setup(abstract_path)
	return
end
-- ─────────────────────────────────────────────────

-- everything else goes below
-- vim.g.mapleader = "|"
-- vim.opt.relativenumber=false
