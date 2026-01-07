-- Configure diagnostics display
vim.diagnostic.config({
    virtual_text = true,      -- Show error messages inline
    signs = true,             -- Show signs in the gutter
    underline = true,         -- Underline errors
    update_in_insert = false, -- Don't update diagnostics while typing
    severity_sort = true,     -- Sort by severity
})

-- LSP on_attach function for setting up keymaps
local on_attach = function(client, bufnr)
    -- Only set up formatting keymap if the LSP supports it
    if client.supports_method('textDocument/formatting') then
        vim.keymap.set('n', '<leader>cf', function()
            vim.lsp.buf.format({ async = false })
        end, { buffer = bufnr, desc = 'Format code' })
    end

    -- Enable autocompletion if the LSP supports it
    if client.supports_method('textDocument/completion') then
        vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
    end
end

-- Configure lua_ls
vim.lsp.config['lua_ls'] = {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            }
        }
    }
}

-- Enable lua_ls
vim.lsp.enable('lua_ls')

-- Configure phpactor
vim.lsp.config['phpactor'] = {
    cmd = { 'phpactor', 'language-server' },
    filetypes = { 'php' },
    root_markers = { 'composer.json', '.git' },
    on_attach = on_attach,
}

-- Enable phpactor
vim.lsp.enable('phpactor')

-- Configure typescript-language-server
vim.lsp.config['ts_ls'] = {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
    root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json', '.git' },
    on_attach = on_attach,
}

-- Enable typescript-language-server
vim.lsp.enable('ts_ls')
