return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup {
        extensions = {
        file_browser = {
          depth = 1,
          grouped = true,
          git_status = true,
          collapse_dirs = true,
          follow_symlinks = true,
          hidden = { file_browser = true, folder_browser = true },
          hijack_netrw = true,
        },
      },
    }
    vim.keymap.set("n", "<leader>b", ":Telescope file_browser<CR>")
  end
}
