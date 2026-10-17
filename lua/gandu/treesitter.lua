require('nvim-treesitter').setup({})

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'c', 'cpp', 'go' },
    callback = function()
        vim.treesitter.start()
    end,
})
