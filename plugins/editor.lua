return {
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        -- dependencies = { "nvim-tree/nvim-web-devicons" },
        -- or if using mini.icons/mini.nvim
        dependencies = { "echasnovski/mini.icons" },
        opts = {}
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy", -- Loads after initial UI rendering
        config = function()
            require("which-key").setup()
        end,
    },

    {
        {
            "gbprod/substitute.nvim",
            keys = { "s", "S" },
            config = function()
                require("substitute").setup({
                    highlight_substituted_text = {
                        enabled = true,
                        timer = 200,
                    },
                })
            end,
        },
    },
    {
        {
            "kylechui/nvim-surround",
            version = "*",
            event = "VeryLazy",
            config = function()
                require("nvim-surround").setup()
            end,
        },
    },

    {
        {
            "lukas-reineke/indent-blankline.nvim",
            event = "BufReadPost",
            config = function()
                require("ibl").setup({
                    indent = { char = "▏" },
		    scope = { enabled = true, show_start = true, show_end = true },
                })
            end,
        }
    }
}
