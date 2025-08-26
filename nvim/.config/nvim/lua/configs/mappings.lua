local wk = require("which-key")

wk.add({
  {
    mode = { "n", "v" },
    -- Menus
    { "<leader>l",  "<cmd>Lazy home<CR>",              desc = "Packages" },
    { "<leader>m",  "<cmd>Mason<CR>",                  desc = "LSPs" },
    { "<leader>s",  "<cmd>Telescope find_files<CR>",   desc = "Telescope find files" },
    { "<leader>p",  "<cmd>Telescope live_grep<CR>",    desc = "Telescope live grep" },
    { "<leader>b",  "<cmd>Telescope file_browser<CR>", desc = "Telescope browser" },
    { "<leader>y",  "<cmd>Yazi cwd<CR>",               desc = "Yazi file browser" },
    -- ??? { "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", desc = "Substitute word under cursor" },

    -- LSP
    { "<leader>h",  vim.lsp.buf.hover,                 desc = "Hover" },
    { "<leader>d",  vim.lsp.buf.definition,            desc = "Definition" },
    { "<leader>f",  vim.lsp.buf.format,                desc = "Format" },
    { "<leader>c",  vim.lsp.buf.code_action,           desc = "Code actions" },

    -- Tabs
    { "<leader>t",  ":tabe<CR>",                       desc = "Spawn new empty tab" }, -- <Tab>
    { "t",          ":tabn<CR>",                       desc = "Switch to next tab" },
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
    -- { "<C-d>",      "<C-d>zz",                         desc = "Scroll down and center" },
    -- { "<C-u>",      "<C-u>zz",                         desc = "Scroll up and center" },
    { "<C-u>",      "<C-y>k<C-y>k",                    desc = "Scroll down and center" },
    { "<C-d>",      "<C-e>j<C-e>j",                    desc = "Scroll up and center" },

    -- Search
    { "N",          "Nzzzv",                           desc = "Previous search result and center" },
    { "n",          "nzzzv",                           desc = "Next search result and center" },

    -- Editing
    { "<C-,>",      "$a,<Esc>",                        desc = "Comma at end" },
    { "U",          "<C-r>",                           desc = "Comma at end" },
    { "<C-Return>", "$a<CR><Esc>",                     desc = "New line at end" },
    { "==",         "gg=G",                            desc = "Reindent file" },
    { "J",          "mzJ`z",                           desc = "Join line with next" },
  },
  {
    mode = { "v" },
    { "J", ":m '>+1<CR>gv=gv", desc = "Move line down" },
    { "K", ":m '<-2<CR>gv=gv", desc = "Move line up" },
    { "p", "\"0p", desc = "Paste no cut" },
  },
  {
    mode = { "x" },
    { "<leader>p", '"_dP', desc = "Paste and copy to void register" },
  },
})
