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

end, 
config = {
    package_root = vim.fn.stdpath('config') .. '/site/pack'
}})

