return {
  {
    "mbbill/undotree",
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
    },
    config = function()
      -- Persistent undo setup
      vim.opt.undofile = true
      vim.opt.undodir = vim.fn.expand("~/.local/state/nvim/undo") --  Neovim-compatible path
      vim.fn.mkdir(vim.opt.undodir:get(), "p") --  Create directory if missing

      -- Undotree settings
      vim.g.undotree_WindowLayout = 1
      vim.g.undotree_DiffAutoOpen = 1
      vim.g.undotree_DiffpanelHeight = 10
      vim.g.undotree_SetFocusWhenToggle = 1
      vim.g.undotree_HighlightChangedText = 1
      vim.g.undotree_HighlightChangedWithSign = 1
      vim.g.undotree_RelativeTimestamp = 1
      vim.g.undotree_HelpLine = 1
      vim.g.undotree_CursorLine = 1
    end,
  },
}
