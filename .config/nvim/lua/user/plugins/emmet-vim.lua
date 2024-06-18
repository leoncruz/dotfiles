return {
	"mattn/emmet-vim",
		ft = {
			"html",
			"javascriptreact",
			"javascript",
			"typescriptreact",
			"eelixir",
			"eruby",
			"elixir"
		},
		config = function()
			vim.cmd([[ imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>") ]])
		end,
 }

