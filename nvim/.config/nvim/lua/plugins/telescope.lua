return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8', 
    dependencies = { 'nvim-lua/plenary.nvim' }, 
    config = function()
      require('telescope').setup{
        defaults = {
          
        },
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
  }
