return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'gruvbox-material',
                    icons_enabled = true,
                    component_separators = { left = '❯', right = '❮' }, -- Arrow separators
                    section_separators = { left = '', right = '' },
                    disabled_filetypes = { 'NvimTree', 'alpha', 'fzf' },
                },
                sections = {
                    lualine_a = { 'mode' },
                    lualine_b = { 'filename' },
                    lualine_c = { 'diagnostics' },
                    lualine_x = { 'filetype', 'encoding' },
                    lualine_y = { 'progress' },
                    lualine_z = { 'location' }
                },
            })
        end,
    },
}
