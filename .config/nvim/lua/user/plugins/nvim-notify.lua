return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")

    vim.notify = notify

    vim.notify.setup {
      timeout = 1000
    }
  end
}
