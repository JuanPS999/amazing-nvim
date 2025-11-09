return {
    'akinsho/toggleterm.nvim', -- Nome do plugin
    config = function()
        require("toggleterm").setup {
            size = 10,                -- Tamanho do terminal em número de linhas
            open_mapping = [[<c-\>]], -- Mapeamento de tecla para abrir o terminal
            direction = 'horizontal', -- O terminal será horizontal
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 2,     -- Intensidade do sombreado do terminal
            start_in_insert = true, -- Começa no modo de inserção
            insert_mappings = true, -- Habilita mapeamentos enquanto no modo de inserção
            persist_size = true,    -- Persistência do tamanho entre aberturas
        }
    end
}
