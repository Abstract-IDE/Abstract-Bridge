-- ─────────────────────────────────────────────────
-- WARNING: this snippet must on top of init.lua
-- ─────────────────────────────────────────────────
if vim.g.ABSTRACT_LOADED == nil then
  -- local abstract_path = "/home/shaeins7/codeDNA/dev/Projects/neovim/Abstract"
  local abstract_path = vim.fn.stdpath("data") .. "/Abstract"
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


-- vim.g.mapleader = "|"
