return {
    "neanias/everforest-nvim",
    version = false, lazy = false, priority = 1000, 
    config = function() 
      require("everforest").setup({}) 
      vim.cmd.colorscheme "everforest"
    end 
}
