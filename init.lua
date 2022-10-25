--[[ init.lua ]]
--
--LEADER
vim.g.mapleader = " "
vim.g.localleader = "\\"

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
