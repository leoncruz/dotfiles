return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    cmdline = {
      enabled = true,
      view = "cmdline_popup",
      opts = {
        position = {
          row = "40%",
          col = "50%",
        },
        size = {
          width = "auto",
          height = "auto",
          min_width = 50,
        }
      }
    },
    popupmenu = {
      enabled = true,
      backend = "cmp",
      kind_icons = {},
    },
    messages = {
      enabled = false
    },
    notify = {
      enabled = false
    },
    lsp = {
      progress = {
        enabled = false
      }
    }
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
  }
}
