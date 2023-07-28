vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.g.mapleader = " "

vim.keymap.set("i", "{", "{<Enter>}<Esc>O")
vim.keymap.set("i", "printf", "printf(\"\");<Esc>hhi")

vim.keymap.set("n", "<C-j>", "<C-d>")
vim.keymap.set("n", "<C-k>", "<C-u>")

require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
end)

-- telecope
local telecmd = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telecmd.find_files, {}) -- find files
vim.keymap.set('n', '<leader>fg', telecmd.git_files, {}) -- find git
vim.keymap.set('n', '<leader>fs', telecmd.live_grep, {}) -- find string (require ripgrep found in edge/community which fucks with my env)

