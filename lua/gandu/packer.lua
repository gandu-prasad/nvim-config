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
    -- Completion engine
    use 'hrsh7th/nvim-cmp'

    -- LSP completion source
    use 'hrsh7th/cmp-nvim-lsp'

    -- Buffer words and filesystem paths
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'

    use { 'mason-org/mason.nvim', tag = 'v2.3.1' }
    use { 'mason-org/mason-lspconfig.nvim', tag = 'v2.3.0' }
end)
