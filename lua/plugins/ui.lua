return {
    -- Gruvbox Material colorscheme
    {
        'sainnhe/gruvbox-material',
        lazy = false, -- Load immediately (not lazy-loaded)
        priority = 1000, -- Load before other plugins
        config = function()
            vim.opt.termguicolors = true
            vim.opt.background = 'dark'
            vim.g.gruvbox_material_background = 'hard'
            vim.g.gruvbox_material_foreground = 'mix'
            vim.g.gruvbox_material_enable_bold = '1'
            vim.g.gruvbox_material_enable_italic = true
            vim.g.gruvbox_material_better_performance = 1
            vim.g.gruvbox_material_transparent_background = 2
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
            vim.cmd.colorscheme('gruvbox-material')
        end
    },
    -- Add other UI-related plugins here (e.g., statusline, bufferline)
}
