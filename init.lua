--- ─────────────────────────────────────────────────
--- WARNING: This snippet must be placed at the top of init.lua.
--- ─────────────────────────────────────────────────
local data = vim.fn.stdpath("data")
local repo = data .. "/abstract"

if vim.fn.isdirectory(repo) == 0 then
    vim.fn.system({ "git", "clone", "--depth", "1", "-b", "rust-rewrite", "https://github.com/Abstract-IDE/Abstract.git",
        repo })
end
dofile(repo .. "/code/lua/init.lua")(data, repo)
--- ─────────────────────────────────────────────────
