-- lazynvim init
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

dofile("sysplug.lua")
dofile("custom/userplug.lua")

local function combineArrays(arr1, arr2)
    local combinedArray = {}
    for _, value in ipairs(arr1) do
        table.insert(combinedArray, value)
    end

    for _, value in ipairs(arr2) do
        table.insert(combinedArray, value)
    end

    return combinedArray
end
local allPlug = combineArrays(SYSPLUG, USERPLUG)
require("lazy").setup(allPlug)

-- other files
dofile("opts/opts.lua")
dofile("vars.lua")
dofile("custom/config.lua")
dofile("custom/binds.lua")
dofile("custom/opts/opts.lua")

-- couldn't get this into a which key bind but since it's name is self explanitory I'll just add it here as keybind
vim.api.nvim_set_keymap('n', '<leader><CR>', '<cmd>Telescope bookmarks<CR>', { noremap = true, silent = true })
