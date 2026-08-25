return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup({
                check_ts = true,                   -- Use treesitter to check pairs
                enable_check_bracket_line = false, -- Don't add pairs if line is too long
                ignored_next_char = "[%w%.]",      -- Don't add pair if next char is alphanumeric or `.`
                fast_wrap = {                      -- Fast wrap with <C-e>
                    map = "<C-e>",
                    chars = { "{", "[", "(", '"', "'" },
                    pattern = [=[[%'%"%>%]%)%}%,]]=],
                },
            })
        end,
    },
}
