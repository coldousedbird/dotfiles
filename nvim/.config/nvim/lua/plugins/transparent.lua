return {
  'xiyaowong/transparent.nvim',
  enabled = true,
  config = function()
    require("transparent").setup({
      exclude_groups = {'CursorLine'},
    })
  end

}
