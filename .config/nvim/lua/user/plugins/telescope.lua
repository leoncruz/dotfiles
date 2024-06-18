return {
	"nvim-telescope/telescope.nvim",
	opts = {
		defaults = {
			file_ignore_patterns = {
				"node_modules", ".elixir_ls", "_build", "deps", "__pycache__",
				".idea", ".dart_tool", "build", ".git", "ios/", "android/", "assets/vendor"
			}
		},
		pickers = {
			find_files = {
				hidden = true
			}
		},
	}
}
