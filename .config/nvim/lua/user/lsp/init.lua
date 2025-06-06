local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp_config = require("lspconfig")

local cmp = require("user.lsp.nvim_cmp")

cmp.setup()

lsp_config.ruby_lsp.setup {
	capabilities = cmp_capabilities,
	filetypes = { "ruby", "erb", "eruby" },
	on_attach = function(client, bufnr)
    vim.lsp.commands['rubyLsp.openFile'] = function(command, ctx)
      local uri = command.arguments[1][1]

      local filename = vim.uri_to_fname(uri)

			local options = {
				{ label = "Open file", command = "edit" },
				{ label = "Open file in new tab", command = "tabedit" },
				{ label = "Split vertical", command = "vsplit" },
				{ label = "Split horizontal", command = "split" },
			}

			vim.ui.select(options, {
				prompt = "Como deseja abrir o arquivo?",
				format_item = function(item) return item.label end,
			}, function(choice)
				if not choice then return end
				vim.cmd(choice.command .. " " .. vim.fn.fnameescape(filename))
			end)
    end

		vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave" }, {
			buffer = bufnr,
			callback = function()
				if client.supports_method("textDocument/codeLens") then
					vim.lsp.codelens.refresh()
				end
			end,
		})

		if client.supports_method("textDocument/codeLens") then
			vim.lsp.codelens.refresh()
		end
	end
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
