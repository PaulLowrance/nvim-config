--[[ keys.lua ]]
-- These are the keybindings I have set so far

local map = vim.api.nvim_set_keymap

-- map escape inm insert mode to get to normal from home-row
map('i', 'jk', '<esc>', {})

-- [[ NAVIGATION ]]

-- use CTRL-h,j,k,l to navigate windows
map('n', '<C-h>', '<C-w>h', {})
map('n', '<C-j>', '<C-w>j', {})
map('n', '<C-k>', '<C-w>k', {})
map('n', '<C-l>', '<C-w>l', {})

-- Toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})