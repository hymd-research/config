vim.wo.number = true
vim.cmd "colorscheme nord"
vim.opt_global.completeopt = { "menu", "menuone", "noselect" }

vim.keymap.set('n', '<C-r>', ':NvimTreeToggle<CR>')
vim.cmd "set termguicolors"
