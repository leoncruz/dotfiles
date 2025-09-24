-- Some basic configurations
vim.g.mapleader = ' '

vim.o.number = true
vim.o.relativenumber = true
vim.encoding = "UTF-8"
vim.o.clipboard = "unnamedplus"
vim.o.foldmethod = "indent"
vim.o.foldlevel = 99
vim.o.background = "dark"
vim.o.autoindent = true
vim.o.termguicolors = true
vim.o.colorcolumn = "80,120"
vim.opt.cursorline = true
vim.opt.backspace = 'indent,eol,start'

vim.opt.completeopt:append({ "menu", "menuone", "noselect" })

vim.opt.swapfile = false

vim.cmd [[
	set autoindent
	set expandtab
	set shiftwidth=2
	set smartindent
	set softtabstop=2
	set tabstop=2
	set laststatus=3
]]

-- vim-test configurations
vim.g['test#strategy'] = "neovim"
vim.g['test#preserve_screen'] = 1

vim.opt.signcolumn = 'yes'

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
	pattern = { '*.heex' },
	command = [[ set filetype=eelixir ]],
})
