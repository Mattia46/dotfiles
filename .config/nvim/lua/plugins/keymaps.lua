-- telescope
vim.keymap.set("n", "<C-p>", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>")

vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")

-- tree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR> <c-w>=')

-- format code using LSP
vim.keymap.set("n", "<leader>i", vim.lsp.buf.format)

-- markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>")

vim.keymap.set('n', '<leader>fd', ":lua require('goto-preview').goto_preview_definition()<CR>")
vim.keymap.set('n', '<leader>gt', ":lua require('goto-preview').goto_preview_type_definition()<CR>")
vim.keymap.set('n', '<leader>gi', ":lua require('goto-preview').goto_preview_implementation()<CR>")
vim.keymap.set('n', '<leader>gp', ":lua require('goto-preview').close_all_win()<CR>")

-- fugitive
vim.keymap.set('n', '<leader>gs', ':Git<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gd', ':Gvdiff<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ge', ':Gedit<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gm', ':diffget //2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>go', ':diffget //3<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gu', ':diffupdate<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gr', ':Gread<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gw', ':Gwrite<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gl', ':Glog -- % copen<CR>', { noremap = true, silent = true })

-- Telescope setup for live grep (similar to Ag search)
local telescope = require('telescope')
local builtin = require('telescope.builtin')

-- Setup for Telescope live grep (similar to Ag)
vim.keymap.set('n', 'K', function()
  local word = vim.fn.expand("<cword>")
  builtin.grep_string({ search = word })
end)

-- Bind \ (backward slash) to Telescope live grep (similar to Ag search shortcut)
vim.keymap.set('n', '\\', function()
  builtin.live_grep()
end)

-- Optional: If you want to use ag as the default grep tool with Telescope's live_grep
telescope.setup {
  defaults = {
    vimgrep_arguments = {
      'ag', '--vimgrep', '--ignore', '--hidden'
    },
  },
}
