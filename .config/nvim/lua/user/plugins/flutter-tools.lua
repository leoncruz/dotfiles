return {
	"nvim-flutter/flutter-tools.nvim",
	ft = { "dart" },
	opts = {
		dev_log = {
			open_cmd = "-1tabnew"
		},
		flutter_lookup_cmd = "mise where flutter",
		lsp = {
			on_attach = function()
				vim.api.nvim_create_autocmd({ "BufWritePre" }, { pattern = "*.dart", command = ":lua vim.lsp.buf.format()" })
			end
		}
	}
}
