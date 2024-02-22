print("LSP config")
local lsp = require('lsp-zero')
local lspconfig = require('lspconfig')
lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'gopls','lua_ls','gradle_ls'},
    handlers = {
        lsp.default_setup,
        gopls = function()
           lspconfig.gopls.setup({
                settings = {
                    gopls = {
                    },
                },
            })
        end,
        lua_ls = function()
            lspconfig.lua_ls.setup({})
        end,
        gradle_ls = function ()
            lspconfig.gradle_ls.setup({})
        end,
    },
})

