return {
  "NvChad/nvim-colorizer.lua",
  enabled = false,
  event = "BufReadPre",
  init = function()
    require("colorizer").setup()
  end
}
