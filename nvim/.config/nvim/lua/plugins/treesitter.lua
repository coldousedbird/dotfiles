return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"sway", "lua", "asm", "bash", "vim", "regex", "dockerfile", "yaml", "c", "cpp", "rust", "html", "css", "csv", "sql", "markdown", "markdown_inline", "jinja", "jinja_inline", "comment", "jsonc" },
        sync_install = false,
        higlight = { enable = true },
        indent = { enable = true },
      })
    end
}
