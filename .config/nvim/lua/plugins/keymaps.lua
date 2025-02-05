-- telescope
vim.keymap.set("n", "<C-p>", ":Telescope find_files<cr>") -- search file names

-- search text in files. Currently using <leader>K
-- vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")

vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>")

vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")

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

--
-- -------------------------------------------------------------------------------
-- --                           Folding section
-- -------------------------------------------------------------------------------
-- local vim = vim
-- local opt = vim.opt
-- --
-- opt.foldmethod = "expr"
-- -- opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldlevel = 99
-- opt.foldexpr = "nvim_treesitter#foldexpr() + (v:foldstart ? 1 : 0)"

-- Use <CR> to fold when in normal mode
-- To see help about folds use `:help fold`
-- vim.keymap.set("n", "<CR>", function()
--   -- Get the current line number
--   local line = vim.fn.line(".")
--   -- Get the fold level of the current line
--   local foldlevel = vim.fn.foldlevel(line)
--   if foldlevel == 0 then
--     vim.notify("No fold found", vim.log.levels.INFO)
--   else
--     vim.cmd("normal! za")
--     vim.cmd("normal! zz") -- center the cursor line on screen
--   end
-- end, { desc = "[P]Toggle fold" })
--
-------------------------------------------------------------------------------
--                         End Folding section
-------------------------------------------------------------------------------

