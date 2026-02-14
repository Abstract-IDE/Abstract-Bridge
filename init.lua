--- ─────────────────────────────────────────────────
--- WARNING: This snippet must be placed at the top of init.lua.
--- ─────────────────────────────────────────────────
local data = vim.fn.stdpath("data")
local root = data .. "/abstract"

if vim.fn.isdirectory(root) == 0 then
    vim.fn.system({ "git", "clone", "--depth", "1", "-b", "rust-rewrite", "https://github.com/Abstract-IDE/Abstract.git",
        root })
end
dofile(root .. "/code/lua/init.lua")(root, data)
--- ─────────────────────────────────────────────────
