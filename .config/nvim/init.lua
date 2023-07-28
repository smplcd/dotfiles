vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true


vim.keymap.set("i", "{", "{<Enter>}<Esc>O")
vim.keymap.set("i", "printf", "printf(\"\");<Esc>hhi")

vim.keymap.set("n", "<C-j>", "<C-d>")
vim.keymap.set("n", "<C-k>", "<C-u>")
