return {
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local onedark = require("onedark")

		onedark.load()

		onedark.setup {
			style = "dark",
		}

		vim.cmd([[ colorscheme onedark ]])
	end
}
