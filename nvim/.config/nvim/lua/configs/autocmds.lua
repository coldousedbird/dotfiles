-- Help window is vertical
vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = { '*.txt' },
  callback = function()
    vim.cmd.wincmd('L')
  end,
})
