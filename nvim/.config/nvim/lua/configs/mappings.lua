local wk = require('which-key')

wk.add({
  { "<C-,>", "$a,<Esc>", desc = "Comma at end" },
  { "<C-Return>", "$a<CR><Esc>", desc = "New line at end" },
  { "<C-S-h>", "<cmd>vertical resize +6<CR>", desc = "Resize window left" },
  { "<C-S-j>", "<cmd>resize +3<CR>", desc = "Resize window down" },
  { "<C-S-k>", "<cmd>resize -3<CR>", desc = "Resize window up" },
  { "<C-S-l>", "<cmd>vertical resize -6<CR>", desc = "Resize window right" },
  { "<C-d>", "<C-d>zz", desc = "Scroll down and center" },
  { "<C-h>", "<C-w><C-h>", desc = "Move to left window" },
  { "<C-j>", "<C-w><C-j>", desc = "Move to below window" },
  { "<C-k>", "<C-w><C-k>", desc = "Move to above window" },
  { "<C-l>", "<C-w><C-l>", desc = "Move to right window" },
  { "<C-u>", "<C-u>zz", desc = "Scroll up and center" },
  { "<leader>Y", '"*Y', desc = "Yank line to system clipboard" },
  { "<leader>l", "<cmd>Lazy home<CR>", desc = "Open Lazy main menu" },
  { "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", desc = "Substitute word under cursor" },
  { "<leader>y", '"*y', desc = "Yank to system clipboard" },
  { "==", "gg=G", desc = "Reindent file" },
  { "J", "mzJ`z", desc = "Join line with next" },
  { "N", "Nzzzv", desc = "Previous search result and center" },
  { "n", "nzzzv", desc = "Next search result and center" },
  { "<C-s>", ":tabe<CR>", desc = "Spawn new empty tab"},
  { "<C-n>", ":tabn<CR>", desc = "Switch to next tab"},
  { "<C-p>", ":tabp<CR>", desc = "Switch to previous tab"},
})

wk.add({
  {
    mode = { "v" },
    { "<leader>y", '"*y', desc = "Yank to system clipboard" },
    { "J", ":m '>+1<CR>gv=gv", desc = "Move line down" },
    { "K", ":m '<-2<CR>gv=gv", desc = "Move line up" },
  },
})

wk.add({
    { mode = "x", "<leader>p", '"_dP', desc = "Paste and copy to void register",  },
})

