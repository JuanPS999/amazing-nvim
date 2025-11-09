return {
    'kdheepak/lazygit.nvim',

    -- Não precisa de dependências se já usa o Telescope
    -- dependencies = {
    --   'nvim-lua/plenary.nvim',
    -- },

    -- A magia do lazy.nvim:
    -- O plugin só será carregado quando premir este atalho
    keys = {
        {
            -- Atalho: <Leader> + g + g
            -- (Pode mudar para <leader>lg se preferir)
            "<leader>gg",
            "<cmd>LazyGit<cr>", -- O comando que o plugin expõe
            desc = "Abrir LazyGit"
        }
    },

    config = function()
        -- Não é necessária nenhuma configuração extra,
        -- o atalho na tabela 'keys' trata de tudo.
    end
}
