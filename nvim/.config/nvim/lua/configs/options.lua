vim.g.mapleader = ' '
vim.g.maplocalleader = '\\' -- ?

local options = {
  clipboard = 'unnamedplus', -- use system clipboard instead of local

  relativenumber = true,     -- show relative line numbers
  number = true,             -- show current line number

  expandtab = true,	         -- use spaces instead of tabs
  tabstop = 2,               -- number of spaces for single <tab>
  softtabstop = 2,           -- ?
  shiftwidth = 2,            -- step of (auto)indent
  smarttab = true,           -- autochoice number of spaces on <tab>
  smartindent = true,        -- auto indentation on new lines

  incsearch = true,          -- show search matches as typing continues

  termguicolors = true,      -- true color support ???
  colorcolumn = '130',       -- highlight column
  cursorline = true,         -- highlight current line

  updatetime = 4000,         -- faster completion with 50 ms (default is 4000ms)

  wildmenu = true,
  wildmode = "longest:full,full",
  splitright = true,
}

for option, value in pairs(options) do
  vim.opt[option] = value
end
