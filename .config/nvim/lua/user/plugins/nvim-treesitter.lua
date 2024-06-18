return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    ensure_installed = {
      "bash",
      "css",
      "dart",
      "dockerfile",
      "eex",
      "elixir",
      "go",
      "heex",
      "html",
      "javascript",
      "json",
      "lua",
      "python",
      "ruby",
      "typescript",
      "yaml",
    },
    auto_install = true,
    highlight = {
      enable = true,
    }
  }
}
