--[[ keys.lua ]]
-- These are the keybindings I have set so far

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local expr_opts = {noremap = true, expr = true, silent = true}

-- map escape inm insert mode to get to normal from home-row
map('i', 'jk', '<esc>', {})
map('t', 'jk', '<C-\\><C-n>', default_opts)

map('n', '\\r', ':luafile %<CR>', default_opts)
map('n', '<Left>', ':vertical resize +1<CR>', default_opts)
map('n', '<Right>', ':vertical resize -1<CR>', default_opts)
map('n', '<Up>', ':resize -1<CR>', default_opts)
map('n', '<Down>', ':resize +1<CR>', default_opts)

-- [[ NAVIGATION ]]

-- use CTRL-h,j,k,l to navigate windows
map('n', '<C-h>', '<C-w>h', {})
map('n', '<C-j>', '<C-w>j', {})
map('n', '<C-k>', '<C-w>k', {})
map('n', '<C-l>', '<C-w>l', {})

-- Use Shift+H | L to switch between buffers
map('n', '<S-h>', ':bp<CR>', default_opts)
map('n', '<S-l>', ':bn<CR>', default_opts)
-- deletes buffer
map('n', '<S-c>', ':bd<CR>', default_opts) 



-- Toggle nvim-tree
map('n', 'n', ':NvimTreeToggle<CR>', {})

-- paste over text without yoinking it
map("v", "p", '"_dP', default_opts)

-- [[MANIPULATIONS]]

-- Indentline plugin
map('n', '<leader>l', ':IndentLinesToggle<CR>', {})

-- move highlighted text in visual mode
map('x', 'K', ":move '<-2<CR>gv-gv>", default_opts)
map('x', 'J', ":move '>+1<CR>gv-gv>", default_opts)



--[[PLUGINS]]
-- Tagbar
map('n', '<F8>', ':TagbarToggle<CR>', {})

-- Telescope binding
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
