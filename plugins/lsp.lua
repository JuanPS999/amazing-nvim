return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        },
        config = function()
            -- Your LSP configuration goes here
            local lsp = require('lsp-zero').preset({
                name = 'minimal',
                float_border = 'rounded', -- Prettier borders
            })

            -- Keybindings (defaults for now)
            lsp.on_attach(function(client, bufnr)
                lsp.default_keymaps({ buffer = bufnr })
            end)

            -- Install & Configure Language Servers
            lsp.ensure_installed({
                'lua_ls',  -- Lua
                'pyright', -- Python
                'jdtls',   -- Java
                'bashls',  -- Bash
                'yamlls',  -- YAML
                'jsonls',  -- JSON
            })

            -- Format-on-Save
            lsp.format_on_save({
                format_opts = {
                    async = false,
                    timeout_ms = 10000,
                },
                servers = {
                    ['lua_ls'] = { 'lua' },
                    ['pyright'] = { 'python' },
                    ['jdtls'] = { 'java' },
                    ['bashls'] = { 'sh' },
                }
            })

            -- Disable Semantic Highlighting (optional)
            lsp.set_server_config({
                on_init = function(client)
                    client.server_capabilities.semanticTokensProvider = nil
                end,
            })
            require('lspconfig').lua_ls.setup({
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT', -- Use LuaJIT (Neovim's Lua runtime)
                        },
                        diagnostics = {
                            globals = { 'vim' }, -- Tell LSP about the `vim` global
                        },
                        workspace = {
                            library = {
                                vim.env.VIMRUNTIME,  -- Add Neovim runtime to workspace
                            },
                            checkThirdParty = false, -- Disable third-party library checks
                        },
                        telemetry = {
                            enable = false, -- Disable telemetry
                        },
                    },
                },
            })
            -- Setup
            lsp.setup()

            -- Optional: Configure Autocompletion
            local cmp = require('cmp')
            cmp.setup({
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'buffer' },
                    { name = 'path' },
                },
                mapping = cmp.mapping.preset.insert({
                    ['<CR>'] = cmp.mapping.confirm({ select = false }),
                    ['<C-Space>'] = cmp.mapping.complete(),
                }),
            })
        end,
    },
}
