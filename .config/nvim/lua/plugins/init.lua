return {
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			'j-hui/fidget.nvim',
			'folke/neodev.nvim'
		}
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = { 'hrsh7th/cmp-nvim-lsp' }
	},
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("nvim-tree").setup {}
    end
  },
	'Mofiqul/dracula.nvim',
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000 , config = true,
    opts = { colorscheme = 'gruvbox' }
  },
  'ctrlpvim/ctrlp.vim',
	'vim-airline/vim-airline',
	'vim-airline/vim-airline-themes',
	'rking/ag.vim',
	'tpope/vim-fugitive',
	'tpope/vim-commentary',
	'nvim-treesitter/nvim-treesitter',
	'nvim-lualine/lualine.nvim'
}
