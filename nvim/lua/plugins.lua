require'jetpack'.startup(function (use)
	use {
		'tani/vim-jetpack',
		opt = true
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = { ':TSUpdate' }
	}
	use {
		'kyazdani42/nvim-web-devicons'
	}
	use {
		'nvim-lua/plenary.nvim'
	}
	use {
		'mfussenegger/nvim-dap'
	}
	use {
		'TimUntersberger/neogit',
		requires = { 'nvim-lua/plenary.nvim' }
	}
	use {
		'sindrets/diffview.nvim'
	}
	use {
		'ibhagwan/fzf-lua'
	}
	use {
		'kyazdani42/nvim-tree.lua',
		requires = { 'kyazdani42/nvim-web-devicons' }
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', }
	}
	use {
		'neovim/nvim-lspconfig'
	}
	use {
		'williamboman/nvim-lsp-installer'
	}
	use {
		'L3MON4D3/LuaSnip'
	}
	use {
		'saadparwaiz1/cmp_luasnip'
	}
	use {
		'hrsh7th/nvim-cmp'
	}
	use {
		'hrsh7th/cmp-nvim-lsp'
	}
	use {
		'hrsh7th/cmp-buffer'
	}
	use {
		'folke/lua-dev.nvim'
	}
	use {
		'dag/vim-fish'
	}
	use {
		'hashivim/vim-terraform'
	}
	use {
		'simrat39/rust-tools.nvim'
	}
end)
