-- vim.cmd("set expandtab")
-- vim.cmd("set tabstop=2")
-- vim.cmd("set softtabstop=2")
-- vim.cmd("set shiftwidth=2")
-- vim.opt["clipboard"] = "unnamedplus"
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\' -- ?

local options = {
  clipboard = 'unnamedplus', -- use system clipboard instead of local

  relativenumber = true,     -- show relative line numbers
  number = true,             -- show current line number

  expandtab = true,	     
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  smarttab = true,
  smartindent = true,

  incsearch = true,

  termguicolors = true,
  colorcolumn = '130',
  cursorline = true,

  updatetime = 50,
}

for option, value in pairs(options) do
  vim.opt[option] = value
end
