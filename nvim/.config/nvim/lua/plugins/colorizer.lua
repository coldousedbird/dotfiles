return {
  "NvChad/nvim-colorizer.lua",
  event = "BufReadPre",
  init = function()
    require("colorizer").setup()
  end
}
