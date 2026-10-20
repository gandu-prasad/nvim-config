require('mason').setup()

require('mason-lspconfig').setup({
    ensure_installed = {
        'clangd',
        'gopls',
        'lua_ls',
    },
    automatic_enable = false,
})

local capabilities =
    require('cmp_nvim_lsp').default_capabilities()

for _, server in ipairs({ 'clangd', 'gopls', 'lua_ls' }) do
    vim.lsp.config(server, {
        capabilities = capabilities,
    })
end

vim.lsp.enable({ 'clangd', 'gopls', 'lua_ls' })
