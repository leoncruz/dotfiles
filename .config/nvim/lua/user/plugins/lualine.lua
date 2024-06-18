local lsp_status = function()
	local clients = vim.lsp.buf_get_clients()

	local active_clients = {}

	for id, client in ipairs(clients) do
		local is_attached = vim.lsp.buf_is_attached(0, id)

		table.insert(active_clients, { name = client.name, status = is_attached })
	end

	local message = ""

	for _, client in ipairs(active_clients) do
		if client.status then
			message = string.format("%s %s %s", message, "🟢 ", client.name)
		else
			message = string.format("%s %s %s", message, "🔴 ", client.name)
		end
	end

	return message
end

return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			theme = "onedark"
		},
		sections = {
			lualine_c = {
				{
					"filename",
					file_status = true,
					path = 1
				},
			},
			lualine_x = {
				{ lsp_status },
				"encoding",
				"fileformat",
				"filetype"
			},
		},
	}
}
