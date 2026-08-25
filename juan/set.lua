-- UI Settings
vim.opt.termguicolors = true
vim.opt.guicursor = ""

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Line Wrapping
vim.opt.wrap = false

-- File Management
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.local/state/nvim/undodir"

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Scrolling & Layout
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Performance
vim.opt.updatetime = 50

-- Advanced
vim.opt.isfname:append("@-@")
vim.opt.mouse = "a"

-- Auto-reload files when modified externally
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
    pattern = "*",
    command = "checktime",
})

-- Enable syntax highlighting and filetype detection
vim.cmd([[
  filetype plugin indent on
  syntax enable
]])
