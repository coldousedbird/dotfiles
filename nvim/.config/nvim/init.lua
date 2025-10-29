-- GLOBALS
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\' -- ?
vim.g.loaded_netrwPlugin = 0

-- OPTIONS
local options = {
  -- basic
  clipboard = 'unnamedplus', -- use system clipboard instead of local
  number = true,             -- show current line number
  relativenumber = true,     -- show relative to current line numbers
  cursorline = true,         -- highlight current line
  wrap = false,              -- not wrapping long lines
  scrolloff = 7,             -- keep some space below and above cursor
  sidescrolloff = 7,         -- keep some space to left and right of cursor

  -- indentation
  tabstop = 2,        -- number of spaces for single <tab>
  shiftwidth = 2,     -- indent width
  softtabstop = 2,    -- ?
  expandtab = true,   -- use spaces instead of tabs
  smartindent = true, -- auto indentation on new lines
  autoindent = true,  -- auto indentation on new lines
  smarttab = true,    -- autochoice number of spaces on <tab>

  -- search
  ignorecase = true, -- case insensitive search
  smartcase = true,  -- case sensitive if uppercase in search
  hlsearch = true,   -- highlight all search results
  incsearch = true,  -- show search matches as typing continues

  -- visuals
  termguicolors = true,                      -- 24-bit colors
  signcolumn = "no",                         -- show sign column
  showmatch = true,                          -- highlight matching brackets
  matchtime = 2,
  cmdheight = 1,                             -- Command line height
  completeopt = "menuone,noinsert,noselect", -- Completion options
  showmode = false,                          -- Don't show mode in command line
  pumheight = 10,                            -- Popup menu height
  pumblend = 10,                             -- Popup menu transparency
  winborder = 'rounded',
  winblend = 0,                              -- Floating window transparency
  conceallevel = 0,                          -- Don't hide markup
  concealcursor = "",                        -- Don't hide cursor line markup
  lazyredraw = true,                         -- Don't redraw during macros
  synmaxcol = 300,                           -- Syntax highlighting limit

  hidden = true,                             -- Allow hidden buffers
  errorbells = false,                        -- No error bells
  backspace = "indent,eol,start",            -- Better backspace behavior
  autochdir = false,                         -- Don't auto change directory
  selection = "exclusive",                   -- Selection behavior
  mouse = "a",                               -- Enable mouse support
  modifiable = true,                         -- Allow buffer modifications
  encoding = "UTF-8",                        -- Set encoding

  -- File handling
  backup = false,      -- Don't create backup files
  writebackup = false, -- Don't create backup before writing
  swapfile = false,    -- Don't create swap files
  undofile = true,     -- Persistent undo
  updatetime = 300,    -- Faster completion
  timeoutlen = 500,    -- Key timeout duration
  ttimeoutlen = 0,     -- Key code timeout
  autoread = true,     -- Auto reload files changed outside vim
  autowrite = false,   -- Don't auto save

  wildmenu = true,     --
  wildmode = "longest:full,full",
  splitright = true,
}
for option, value in pairs(options) do
  vim.opt[option] = value
end


vim.opt.undodir = vim.fn.expand("~/.vim/undodir") -- Undo directory
vim.opt.path:append("**")                         -- include subdirectories in search
vim.opt.iskeyword:append("-")                     -- Treat dash as part of word

-- PLUGINS
vim.pack.add({
  { src = 'https://github.com/neanias/everforest-nvim',                   name = 'everforest' },
  { src = 'https://github.com/folke/which-key.nvim',                      name = 'which-key' },
  -- {src='https://github.com/folke/snacks.nvim', name='snacks'},
  --"rcarriga/nvim-notify",
  { src = 'https://github.com/neovim/nvim-lspconfig',                     name = 'lspconfig' },
  { src = 'https://github.com/rcarriga/nvim-notify',                      name = 'notify' },
  { src = 'https://github.com/mikavilpas/yazi.nvim',                      name = 'yazi' },
  { src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim', name = 'markdown' },
  -- {src="https://github.com/xiyaowong/transparent.nvim"},
  -- {src="https://github.com/nvim-lualine/lualine.nvim"},
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter',           name = 'treesitter' },
  { src = 'https://github.com/nvim-mini/mini.icons',                      name = 'mini-icons' },
  { src = 'https://github.com/mason-org/mason.nvim',                      name = 'mason' },
  { src = 'https://github.com/mason-org/mason-lspconfig.nvim',            name = 'mason-lspconfig' },
})
require('mini.icons').setup()
require('render-markdown').setup({ latex = { enabled = false } })
require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "c", "cpp", "rust", "zig", "java", "javascript", "python", "bash", "lua", "sql",                      -- scripts
    "json", "yaml", "jinja", "jinja_inline", "toml", "html", "css", "csv", "markdown", "markdown_inline", -- markup
    "vim", "dockerfile", "sway", "comment", "regex" },                                                    -- aux
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { 'lua_ls', 'ast_grep' },
  automatic_enable = true,
})
vim.lsp.config("lua_ls", {
  settings = { Lua = { workspace = { library = vim.api.nvim_get_runtime_file("", true) } } }

})
-- make windows transparent
vim.cmd [[
  colorscheme everforest
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
-- vim.cmd.colorscheme("everforest")
-- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
-- vim.api.nvim_set_hl(0, "NormalNC", {bg = "none"})
-- vim.api.nvim_set_hl(0, "EndOfBuffer", {bg = "none"})

local wk = require("which-key")
wk.add({
  {
    mode = { "n", "v" },
    -- Menus
    { "<leader>m",  "<cmd>Mason<CR>",              desc = "LSPs" },
    { "<leader>y",  "<cmd>Yazi cwd<CR>",           desc = "Yazi file browser" },
    -- LSP
    { "<leader>h",  vim.lsp.buf.hover,             desc = "Hover" },
    { "<leader>d",  vim.lsp.buf.definition,        desc = "Definition" },
    { "<leader>f",  vim.lsp.buf.format,            desc = "Format" },
    { "<leader>c",  vim.lsp.buf.code_action,       desc = "Code actions" },
    -- Tabs
    { "<leader>t",  ":tabe<CR>",                   desc = "Spawn new empty tab" },
    { "t",          ":tabn<CR>",                   desc = "Switch to next tab" },
    { "<S-t>",      ":tabp<CR>",                   desc = "Switch to previous tab" },
    -- Windows
    { "<leader>vs", ":vsplit<CR>",                 desc = "Vertical window split" },
    { "<C-h>",      "<C-w><C-h>",                  desc = "Move to left window" },
    { "<C-j>",      "<C-w><C-j>",                  desc = "Move to below window" },
    { "<C-k>",      "<C-w><C-k>",                  desc = "Move to above window" },
    { "<C-l>",      "<C-w><C-l>",                  desc = "Move to right window" },
    { "<C-S-h>",    "<cmd>vertical resize +6<CR>", desc = "Resize window left" },
    { "<C-S-j>",    "<cmd>resize +3<CR>",          desc = "Resize window down" },
    { "<C-S-k>",    "<cmd>resize -3<CR>",          desc = "Resize window up" },
    { "<C-S-l>",    "<cmd>vertical resize -6<CR>", desc = "Resize window right" },
    -- File Navigation
    { "K",          "2<C-y>2k",                    desc = "Scroll two lines down" },
    { "J",          "2<C-e>2j",                    desc = "Scroll two lines up" },
    -- Search
    { "N",          "Nzzzv",                       desc = "Previous search result and center" },
    { "n",          "nzzzv",                       desc = "Next search result and center" },
    -- Editing
    { "<leader>w",  ":write<CR>",                  desc = "Write" },
    { "<leader>q",  ":quit<CR>",                   desc = "Quit" },
    { "<leader>o",  ":so<CR>",                     desc = "Source" },
    { "U",          "<C-r>",                       desc = "Redo" },
    { "<C-,>",      "$a,<Esc>",                    desc = "Comma at end" },
    { "<C-Return>", "$a<CR><Esc>",                 desc = "New line at end" },
    { "==",         "gg=G",                        desc = "Reindent file" },
  },
  {
    mode = { "v" },
    { "J", ":m '>+1<CR>gv=gv", desc = "Move line down" },
    { "K", ":m '<-2<CR>gv=gv", desc = "Move line up" },
    { "p", "\"0p",             desc = "Paste no cut" },
  },
  {
    mode = { "x" },
    { "<leader>p", '"_dP', desc = "Paste and copy to void register" },
  },
})

-- Help window is in tab
vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = { '*.txt' },
  callback = function()
    vim.cmd.wincmd('T')
  end,
})
