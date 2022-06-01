require'jetpack'.startup(function (use)
	use {
		'tani/vim-jetpack',
		opt = true
	}
	use {
		'kyazdani42/nvim-web-devicons',
	}
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		}
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons',
		}
	}
end)

require'nvim-web-devicons'.setup {
	default = true
}

require'nvim-tree'.setup {
}

require'lualine'.setup {
	options = {
		icons_enabled = true,
		theme = 'iceberg',
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
