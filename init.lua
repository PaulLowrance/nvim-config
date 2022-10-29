--[[ init.lua ]]
--
local opt = vim.opt
local g = vim.g
local api = vim.api

--LEADER
g.mapleader = " "
g.localleader = " "


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
