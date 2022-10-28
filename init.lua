--[[ init.lua ]]
--
local opt = vim.opt
local g = vim.g
local api = vim.api

--LEADER
g.mapleader = " "
g.localleader = " "

opt.timeoutlen = 300 --Time in milliseconds to wait on a comman to complete

-- IMPORTS
require('vars') --variables
require('opts')
require('keys')
require('plug')

--PLUGINS
require('nvim-tree').setup{}
require('lualine').setup{
    options = {
        theme = 'dracula-nvim'
    }
}
require('nvim-autopairs').setup{}
