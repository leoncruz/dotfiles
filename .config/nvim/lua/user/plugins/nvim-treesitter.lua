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
  },
  config = function()
    local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
    parser_config.crystal = {
      install_info = {
        url = "/home/leon/programs/tree-sitter-crystal",
        files = {"src/parser.c", "src/scanner.c"},
        branch = "main",
      },
      filetype = "cr",
    }
  end
}
