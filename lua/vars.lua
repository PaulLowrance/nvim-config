--[[ vars.lua]]
--
--Variables used


local g = vim.g
g.t_co = 256
g.background = "dark"


-- Set the Packer Path
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
