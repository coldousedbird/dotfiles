return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = { 
        theme = 'everforest',
        icons_enabled = true,
        globalstatus = false,
        section_separators = { left = '', right = ''},
        -- refresh = {
        --   statusline = 1000,
        --   tabline = 1000,
        --   winbar = 1000,
        -- }
        sections = {
          lualine a = {'mode'},
          lualine b = {'branch', 'diff', 'diagnostics'},
          lualine c = {'filename'},

          lualine x = {'encoding', 'fileformat', 'filetype'},
          lualine y = {'progress'},
          lualine z = {'location'}
        },
      }
    })
  end
}
