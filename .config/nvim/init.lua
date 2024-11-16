vim.g.mapleader = ','
vim.g.maplocalleader = ' '

vim.opt.relativenumber = true
vim.opt.number = true
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- buffer-scoped
vim.opt.autoindent = true

-- window-scoped
vim.opt.cursorline = true

-- global scope
vim.opt.autowrite = true
-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')


-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- vim.cmd [[ set noswapfile ]]
-- vim.cmd [[ set termguicolors ]]

vim.wo.colorcolumn = '80'

vim.keymap.set('n', '\\', ':Ag<SPACE>') 

vim.keymap.set('n', '/', '/\\v')
vim.keymap.set('n', '<TAB>', '<C-W><C-W>')
vim.keymap.set('n', '<Leader>i', 'gg=G')
vim.keymap.set('i', 'jj', '<ESC>:wa<CR>')
vim.keymap.set('n', '<Leader>mn', ':%!jq .<CR>')

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR> <c-w>=')

require("config.lazy")
