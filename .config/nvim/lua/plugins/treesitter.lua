-- See `:help nvim-treesitter`
require('nvim-treesitter.configs').setup {
  -- Add languages to be installed here that you want installed for treesitter
  ensure_installed = {
    'lua', 'python','regex', 'bash', 'markdown', 'markdown_inline', 'sql', 'vimdoc', 'javascript', 'json', 'tsx', 'typescript', 'vim', 'yaml'
  },

  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
    custom_captures = {
      -- Example: Change how 'keyword' is highlighted in Markdown files
      ["markdown.heading"] = "Title",
      ["markdown.bold"] = "BoldText",
    },
  },
  fold = { enable = true },
  indent = { enable = true },
}

