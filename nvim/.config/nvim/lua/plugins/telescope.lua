return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup{
        defaults = {},
        pickers = {
          --[[ find_files = {
            hidden = false,
            follow = true,
            search_dirs = true,
            theme = "dropdown",
          }--]]
        },
        extensions = {
        }
      }
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'telescope find files' })
      vim.keymap.set('n', '<leader>p', builtin.live_grep, { desc = 'telescope live grep' })
    end
  },
  {
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
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require('telescope').setup({
        extensions = {["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      require('telescope').load_extension("ui-select")
    end
  }
}
