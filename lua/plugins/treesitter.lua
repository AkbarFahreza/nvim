return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
      },
    }
  end,
}
