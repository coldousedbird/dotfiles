local wk = require("which-key")

wk.add({
  {
    mode = { "n", "v" },
    -- Menus
    { "<leader>l",  "<cmd>Lazy home<CR>",              desc = "Lazy" },
    { "<leader>ff", "<cmd>Telescope find_files<CR>",   desc = "Telescope find files" },
    { "<leader>p",  "<cmd>Telescope live_grep<CR>",    desc = "Telescope live grep" },
    { "<leader>b",  "<cmd>Telescope file_browser<CR>", desc = "Telescope browser" },
    { "<leader>m",  "<cmd>Glow<CR>",                   desc = "markdown preview" },
    -- ??? { "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", desc = "Substitute word under cursor" },

    -- LSP
    { "<leader>h",  vim.lsp.buf.hover,                 desc = "hover" },
    { "<leader>d",  vim.lsp.buf.definition,            desc = "definition" },
    { "<leader>fo", vim.lsp.buf.format,                desc = "format" },
    { "<leader>c",  vim.lsp.buf.code_action,           desc = "Code actions" },

    -- Tabs
    { "<leader>t",  ":tabe<CR>",                       desc = "Spawn new empty tab" },
    { "<C-t>",      ":tabn<CR>",                       desc = "Switch to next tab" },
    { "<S-t>",      ":tabp<CR>",                       desc = "Switch to previous tab" },

    -- Windows
    { "<leader>w",  ":vsplit<CR>",                     desc = "Spawn new window (inside tab)" },
    { "<C-h>",      "<C-w><C-h>",                      desc = "Move to left window" },
    { "<C-j>",      "<C-w><C-j>",                      desc = "Move to below window" },
    { "<C-k>",      "<C-w><C-k>",                      desc = "Move to above window" },
    { "<C-l>",      "<C-w><C-l>",                      desc = "Move to right window" },
    { "<C-S-h>",    "<cmd>vertical resize +6<CR>",     desc = "Resize window left" },
    { "<C-S-j>",    "<cmd>resize +3<CR>",              desc = "Resize window down" },
    { "<C-S-k>",    "<cmd>resize -3<CR>",              desc = "Resize window up" },
    { "<C-S-l>",    "<cmd>vertical resize -6<CR>",     desc = "Resize window right" },

    -- File Navigation
    { "<C-d>",      "<C-d>zz",                         desc = "Scroll down and center" },
    { "<C-u>",      "<C-u>zz",                         desc = "Scroll up and center" },

    -- Search
    { "N",          "Nzzzv",                           desc = "Previous search result and center" },
    { "n",          "nzzzv",                           desc = "Next search result and center" },

    -- Editing
    { "<C-,>",      "$a,<Esc>",                        desc = "Comma at end" },
    { "<C-Return>", "$a<CR><Esc>",                     desc = "New line at end" },
    { "==",         "gg=G",                            desc = "Reindent file" },
    { "J",          "mzJ`z",                           desc = "Join line with next" },
  },
  {
    mode = { "v" },
    { "J", ":m '>+1<CR>gv=gv", desc = "Move line down" },
    { "K", ":m '<-2<CR>gv=gv", desc = "Move line up" },
  },
  {
    mode = { "x" },
    { "<leader>p", '"_dP', desc = "Paste and copy to void register" },
  },
})
