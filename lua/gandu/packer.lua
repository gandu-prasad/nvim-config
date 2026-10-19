return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use {
        'bluz71/vim-moonfly-colors',
        as = 'moonfly'
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        branch = 'main',
        run = ':TSUpdate',
    }
    use 'neovim/nvim-lspconfig'
    use 'nvim-lualine/lualine.nvim'
    use {
    'windwp/nvim-autopairs',
    }
end)
