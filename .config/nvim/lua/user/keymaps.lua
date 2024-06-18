local map = vim.api.nvim_set_keymap

-- Geral
map("n", "<C-A>", "<cmd>NvimTreeToggle<CR>", {})
map("n", "<C-[>", "<ESC>", {})
map("v", "<C-[>", "<ESC>", {})

-- Move lines
map("n", "<A-j>", ":m+1<CR>==", {})
map("n", "<A-k>", ":m-2<CR>==", {})

map("v", "<A-j>", ":m '>+1<CR>gv=gv", {})
map("v", "<A-k>", ":m '<-2<CR>gv=gv", {})

map("i", "<A-j>", "<Esc>:m+1<CR>==gi", {})
map("i", "<A-k>", "<Esc>:m-2<CR>==gi", {})

-- Terminal
map("n", "<leader>T", "<cmd>tabnew | term<CR>", {})
map("n", "<leader>b", "<cmd>belowright split | term<CR>", {})
map("t", "ii", "<C-\\><C-N>", {})

-- vim-test
map("n", "<leader>s", "<cmd>TestSuite<CR>", {})
map("n", "<leader>f", "<cmd>TestFile<CR>", {})
map("n", "<leader>t", "<cmd>TestNearest<CR>", {})

-- Lspsaga
map("v", "<leader>la", ":<C-U>Lspsaga range_code_action<CR>", {})
map("n", "<leader>la", ":Lspsaga code_action<CR>", {})
map("n", "<leader>lf", ":Lspsaga lsp_finder<CR>", {})
map("n", "<leader>lr", ":Lspsaga rename<CR>", {})
map("n", "<leader>ld", ":Lspsaga show_line_diagnostics<CR>", {})
map("n", "<leader>lc", ":Lspsaga show_cursor_diagnostics<CR>", {})
map("n", "<leader>lnd", ":Lspsaga diagnostic_jump_next<CR>", {})
map("n", "<leader>lpd", ":Lspsaga diagnostic_jump_prev<CR>", {})
map("n", "<leader>lh", ":Lspsaga signature_help<CR>", {})

-- Telescope
map("n", "<C-F>", ":Telescope live_grep<CR>", {})
map("n", "<C-P>", ":Telescope find_files<CR>", {})

-- Bufferline
map("n", "<leader>e", ":BufferLineCycleNext<CR>", { silent = true })
map("n", "<leader>q", ":BufferLineCyclePrev<CR>", { silent = true })

map("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { silent = true })
map("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { silent = true })
map("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { silent = true })
map("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { silent = true })
map("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { silent = true })
map("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", { silent = true })
map("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", { silent = true })
map("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", { silent = true })
map("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", { silent = true })

-- Gitsigns
map("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", { silent = true })
map("n", '<leader>hu', ":Gitsigns reset_hunk<CR>", { silent = true })
map("n", '<leader>hp', ":Gitsigns preview_hunk<CR>", { silent = true })
map("n", '[c', ":Gitsigns next_hunk<CR>", { silent = true })
map("n", ']c', ":Gitsigns prev_hunk<CR>", { silent = true })
