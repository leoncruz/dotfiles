local map = vim.api.nvim_set_keymap

-- Geral
map("n", "<C-A>", "<cmd>NvimTreeToggle<CR>", { silent = true })
map("n", "<C-[>", "<ESC>", { silent = true })
map("v", "<C-[>", "<ESC>", { silent = true })

-- Move lines
map("n", "<A-j>", ":m+1<CR>==", { silent = true })
map("n", "<A-k>", ":m-2<CR>==", { silent = true })

map("v", "<A-j>", ":m '>+1<CR>gv=gv", { silent = true })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { silent = true })

map("i", "<A-j>", "<Esc>:m+1<CR>==gi", { silent = true })
map("i", "<A-k>", "<Esc>:m-2<CR>==gi", { silent = true })

-- Terminal
map("n", "<leader>T", "<cmd>tabnew | term<CR>", { silent = true })
map("n", "<leader>b", "<cmd>belowright split | term<CR>", { silent = true })
map("t", "ii", "<C-\\><C-N>", { silent = true })

-- vim-test
map("n", "<leader>s", "<cmd>TestSuite<CR>", { silent = true })
map("n", "<leader>f", "<cmd>TestFile<CR>", { silent = true })
map("n", "<leader>t", "<cmd>TestNearest<CR>", { silent = true })

-- Lspsaga
map("v", "<leader>la", ":<C-U>Lspsaga range_code_action<CR>", { silent = true })
map("n", "<leader>la", ":Lspsaga code_action<CR>", { silent = true })
map("n", "<leader>lf", ":Lspsaga finder<CR>", { silent = true })
map("n", "<leader>lr", ":Lspsaga rename<CR>", { silent = true })
map("n", "<leader>ld", ":Lspsaga show_line_diagnostics<CR>", { silent = true })
map("n", "<leader>lc", ":Lspsaga show_cursor_diagnostics<CR>", { silent = true })
map("n", "<leader>lnd", ":Lspsaga diagnostic_jump_next<CR>", { silent = true })
map("n", "<leader>lpd", ":Lspsaga diagnostic_jump_prev<CR>", { silent = true })
map("n", "<leader>lh", ":Lspsaga hover_doc<CR>", { silent = true })

map("n", "<leader>co", ":lua vim.lsp.codelens.run()<CR>", { silent = true })

-- Telescope
map("n", "<C-F>", ":Telescope live_grep<CR>", { silent = true })
map("n", "<C-P>", ":Telescope find_files<CR>", { silent = true })

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
