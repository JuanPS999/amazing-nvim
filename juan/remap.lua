vim.g.mapleader = " "

-- Base Neovim
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to upper window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })
vim.keymap.set('n', '<Up>', ':resize +2<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<Down>', ':resize -2<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width' })
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', { desc = 'Increase window width' })
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', { desc = 'Clear search highlights' })
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left (stay in visual)' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right (stay in visual)' })

-- LSP
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Find references' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Show documentation' })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename symbol' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'Format buffer' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float, { desc = 'Show diagnostic' })
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename symbol' })

-- FZF
vim.keymap.set('n', '<leader>ff', '<cmd>FzfLua files<CR>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', '<cmd>FzfLua live_grep<CR>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', '<cmd>FzfLua buffers<CR>', { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>fh', '<cmd>FzfLua help_tags<CR>', { desc = 'Find help' })

-- Undotree
vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<CR>', { desc = 'Toggle undo tree' })

-- File Explorer
vim.keymap.set('n', '<leader>e', '<cmd>Ex<CR>', { desc = 'Open file explorer' })

-- Buffers
vim.keymap.set('n', '<leader>q', '<cmd>bd<CR>', { desc = 'Close buffer' })
vim.keymap.set('n', '<leader>bn', '<cmd>bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bp', '<cmd>bprevious<CR>', { desc = 'Previous buffer' })

-- Quality of Life
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move line up' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' })
