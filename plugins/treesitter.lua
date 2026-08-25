return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                -- List of parsers to install
                ensure_installed = {
                    "java", "python", "lua", "vim", "vimdoc", "markdown", "markdown_inline",
                },
                -- Automatically install missing parsers
                auto_install = true,
                -- Highlighting
                highlight = {
                    enable = true,                             -- Enable advanced syntax highlighting
                    additional_vim_regex_highlighting = false, -- Disable legacy regex highlighting
                },
                -- Incremental selection
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn",    -- Start selection
                        node_incremental = "grn",  -- Expand to next node
                        scope_incremental = "grc", -- Expand to next scope
                        node_decremental = "grm",  -- Shrink to previous node
                    },
                },
                -- Folding
                folding = {
                    enable = true, -- Enable tree-sitter-based folding
                },
                -- Text Objects
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                        },
                    },
                },
                -- Playground (optional, for debugging syntax trees)
                playground = {
                    enable = true, -- Enable playground (use :TSPlaygroundToggle to open)
                },
                -- Rainbow Delimiters (optional, for colorful brackets)
                rainbow = {
                    enable = true, -- Enable rainbow delimiters
                },
            })
        end,
    },
}
