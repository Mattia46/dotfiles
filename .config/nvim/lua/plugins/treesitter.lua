-- See `:help nvim-treesitter`
require('nvim-treesitter.configs').setup {
  -- Add languages to be installed here that you want installed for treesitter
  ensure_installed = {
    'lua', 'python','regex', 'bash', 'markdown', 'markdown_inline', 'sql', 'vimdoc', 'javascript', 'json', 'tsx', 'typescript', 'vim', 'yaml'
  },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
}

