return {
    'lewis6991/gitsigns.nvim',

    -- Carrega assim que um arquivo for lido
    event = { "BufReadPre", "BufNewFile" },

    config = function()
        require('gitsigns').setup({
            signs = {
                add          = { text = '+' },
                change       = { text = '~' },
                delete       = { text = '_' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
            },

            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                map('n', ']c', function()
                    if vim.wo.diff then return ']c' end
                    vim.schedule(function() gs.next_hunk() end)
                    return '<Ignore>'
                end, { expr = true, desc = "Ir para o próximo hunk" })

                map('n', '[c', function()
                    if vim.wo.diff then return '[c' end
                    vim.schedule(function() gs.prev_hunk() end)
                    return '<Ignore>'
                end, { expr = true, desc = "Ir para o hunk anterior" })

                -- Ações
                -- <leader>hs = Hunk Stage (Fazer stage da parte)
                map('n', '<leader>hs', gs.stage_hunk, { desc = "Git: Stage Hunk" })
                -- <leader>hr = Hunk Reset (Reverter a parte)
                map('n', '<leader>hr', gs.reset_hunk, { desc = "Git: Reset Hunk" })
                -- <leader>hS = Stage Buffer (Fazer stage do arquivo todo)
                map('n', '<leader>hS', gs.stage_buffer, { desc = "Git: Stage Arquivo" })
                -- <leader>hu = Undo Stage Hunk (Desfazer stage da parte)
                map('n', '<leader>hu', gs.undo_stage_hunk, { desc = "Git: Undo Stage Hunk" })
                -- <leader>hp = Preview Hunk (Ver o diff da parte)
                map('n', '<leader>hp', gs.preview_hunk, { desc = "Git: Preview Hunk" })
                -- <leader>hb = Blame Line (Ver quem modificou a linha)
                map('n', '<leader>hb', function() gs.blame_line({ full = true }) end, { desc = "Git: Blame Linha" })
            end
        })
    end
}
