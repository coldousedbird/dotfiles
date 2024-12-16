return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    hijack_netrw = true
    vim.keymap.set("n", "<C-b>", ":Telescope file_browser<CR>")
  end
}
