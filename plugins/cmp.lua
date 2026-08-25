return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",           -- Text from buffer
            "hrsh7th/cmp-path",             -- File paths
            "L3MON4D3/LuaSnip",             -- Snippets engine
            "saadparwaiz1/cmp_luasnip",     -- Snippets source
            "rafamadriz/friendly-snippets", -- Pre-made snippets
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            -- Load friendly-snippets
            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Confirm with Enter (don't auto-select first item)
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jump()
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif luasnip.jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" }, -- LSP completions
                    { name = "luasnip" },  -- Snippets
                    { name = "buffer" },   -- Current buffer text
                    { name = "path" },     -- File paths
                }),
            })
        end,
    },
}
