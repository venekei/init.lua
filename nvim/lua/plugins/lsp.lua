return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup {}
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
            ensure_installed = {"lua_ls", "bashls", "jdtls", "kotlin_language_server"}
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.bashls.setup({
                capabilities = capabilities
            })
            lspconfig.jdtls.setup({
                capabilities = capabilities
            })
            lspconfig.kotlin_language_server.setup({
                cmd = {
                    vim.fn.stdpath("data") .. "/mason/packages/kotlin-language-server/bin/kotlin-language-server"
                },
                root_dir = lspconfig.util.root_pattern("settings.gradle.kts", "settings.gradle", "build.gradle.kts", "build.gradle", ".git"),
                on_attach = function(client, bufnr)
                    -- Optional: your on_attach function
                end,
            }) 
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        end,
    },
}
