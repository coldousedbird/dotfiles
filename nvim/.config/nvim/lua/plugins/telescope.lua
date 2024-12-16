return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8', 
    dependencies = { 'nvim-lua/plenary.nvim' }, 
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<c-p>', builtin.find_files, { desc = 'telescope find files' }) 
      vim.keymap.set('n', '<c-f>', builtin.live_grep, { desc = 'telescope live grep' })
    end
  }
