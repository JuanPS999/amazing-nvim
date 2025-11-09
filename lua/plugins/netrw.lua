return {
  -- Isto é um truque para garantir que o lazy.nvim desativa o netrw
  "nvim-tree/nvim-tree.lua",
  config = function()
    -- Desativa o netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end
}
