local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp_config = require("lspconfig")

local cmp = require("user.lsp.nvim_cmp")

cmp.setup()

lsp_config.solargraph.setup {
	diagnostic = true,
	capabilities = cmp_capabilities
}

lsp_config.jedi_language_server.setup {
	capabilities = cmp_capabilities
}

lsp_config.lua_ls.setup {
	capabilities = cmp_capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = {
				enable = false
			}
		}
	}
}

lsp_config.cssls.setup {
	capabilities = cmp_capabilities
}

lsp_config.elixirls.setup {
	capabilities = cmp_capabilities,
	cmd = { 'language_server.sh' }
}

lsp_config.ts_ls.setup {
	capabilities = cmp_capabilities
}

lsp_config.eslint.setup {}

lsp_config.tailwindcss.setup {
	capabilities = cmp_capabilities
}

lsp_config.gopls.setup {
	capabilities = cmp_capabilities
}

lsp_config.crystalline.setup {
	cmd = { 'crystalline' },
	capabilities = cmp_capabilities
}
