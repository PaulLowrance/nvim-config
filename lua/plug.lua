--[[ plug.lua ]]

return require('packer').startup({function(use)
    -- [[ Add the plugins here ]]
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use { 'mhinz/vim-startify' }
    use { 'DanilaMihailov/beacon.nvim' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons',
                    opt = true }
        }
    use { 'Mofiqul/dracula.nvim' }

    -- [[ Dev Plugins ]]
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use { 'majutsushi/tagbar' }
    use { 'Yggdroot/indentLine' }
    use { 'tpope/vim-fugitive' }
    use { 'junegunn/gv.vim' }
    use { 'windwp/nvim-autopairs' }
    use { 'voldikss/vim-floaterm'}
end, 
config = {
    package_root = vim.fn.stdpath('config') .. '/site/pack'
}})

