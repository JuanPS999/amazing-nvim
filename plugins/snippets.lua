return {
    {
        "L3MON4D3/LuaSnip",
        build = "make install_jsregexp",               -- Replaces Packer's "run" key
        dependencies = { "rafamadriz/friendly-snippets" }, -- Optional snippets collection
        config = function()
            -- Your LuaSnip configuration here (e.g., snippet setup)
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    },
}
