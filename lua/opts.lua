--[[ opts.lua ]]
--my options

local opt = vim.opt
local cmd = vim.api.nvim_command

--[[ Line Options ]]
opt.colorcolumn = '80'		--Shows col for max line length
opt.number = true		--Shows line numbers
opt.relativenumber = true	--line numbers are counted from current line
opt.scrolloff = 5		--number of lines to remain on screen when scrolling
opt.signcolumn = "yes"		--shows the signe column

--[[ filetype ]]
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

--[[ Theme ]]
opt.syntax = "on"		--enables syntax highlighting
opt.termguicolors = true	--enables ui color if the terminal supprts it
cmd('colorscheme dracula')

--[[ Search ]]
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

--[[ whitespace ]]
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

--[[ Window Splits ]]
opt.splitright = true
opt.splitbelow = true

--[[ The clipboard ]]
opt.clipboard = 'unnamedplus'        --So important in todays developement environment
