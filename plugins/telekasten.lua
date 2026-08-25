-- ~/.config/nvim/lua/plugins/telekasten.lua
return {
    'nvim-telekasten/telekasten.nvim',
    dependencies = {
        'nvim-telescope/telescope.nvim',
        'nvim-lua/plenary.nvim',
    },
    config = function()
        require('telekasten').setup({
            home = vim.fn.expand("~/notas"),
            calendar = {
                weeknm = 4,
            },
        })
    end,
}
