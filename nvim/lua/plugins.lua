require'jetpack'.startup(function (use)
	use { 'tani/vim-jetpack', opt = true }
	use { 'kyazdani42/nvim-web-devicons' }
	use { 'nvim-lua/plenary.nvim' }
	use { 'mfussenegger/nvim-dap' }
	use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
	use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', } }
	use { 'neovim/nvim-lspconfig' }
	use { 'williamboman/nvim-lsp-installer' }
	use { 'L3MON4D3/LuaSnip' }
	use { 'saadparwaiz1/cmp_luasnip' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/cmp-buffer' }
	use { 'folke/lua-dev.nvim' }
	use { 'dag/vim-fish' }
	use { 'hashivim/vim-terraform' }
	use { 'simrat39/rust-tools.nvim' }
end)

require'nvim-web-devicons'.setup {
	default = true
}

require'nvim-tree'.setup {
}

require'rust-tools'.setup{
}

require'lualine'.setup {
	options = {
		icons_enabled = true,
		theme = 'nord',
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
		disabled_filetypes = {},
		always_divide_middle = true,
		globalstatus = false,
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'filename'},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	extensions = {}
}

