return {
    'nvim-tree/nvim-tree.lua',
    version = '*',                     -- Recomendado para estabilidade
    lazy = false,                      -- Queremos que carregue logo para substituir o netrw
    dependencies = {
        'nvim-tree/nvim-web-devicons', -- Essencial para os ícones
    },
    config = function()
        -- Desativa o netrw (outro sítio onde o pode pôr)
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- Configuração do nvim-tree
        require('nvim-tree').setup({
            -- Desativa o banner de ajuda no topo
            disable_netrw = true,
            hijack_netrw = true,

            -- Usa os ícones do devicons
            renderer = {
                group_empty = true,
                icons = {
                    glyphs = {
                        default = "",
                        symlink = "",
                        git = {
                            unstaged = "",
                            staged = "S",
                            unmerged = "",
                            renamed = "➜",
                            untracked = "U",
                            deleted = "",
                            ignored = "◌",
                        },
                    },
                },
            },
            -- Desativa o "set cursorline" na janela do nvim-tree
            view = {
                width = 30,
                signcolumn = "yes",
            },
            -- Permite que o nvim-tree feche quando for a última janela
            quit_on_open = true,

            -- Não é necessário, o gitsigns faz isto melhor
            git = {
                enable = false,
            },
        })

        -- O ATALHO PRINCIPAL
        -- Mapeia <Leader>e para abrir/fechar a árvore
        -- (Assumindo que o seu <Leader> é 'espaço' ou '\')
        vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>', {
            noremap = true,
            silent = true,
            desc = "Toggle NvimTree"
        })
    end,
}
