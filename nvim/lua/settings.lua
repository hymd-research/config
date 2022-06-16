vim.cmd "colorscheme iceberg"

vim.opt.number = true
vim.opt.autoindent = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.incsearch = true
vim.opt.smartcase = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt_global.completeopt = { "menu", "menuone", "noselect" }
vim.opt_global.diffopt = { 'internal', 'filler', 'closeoff', 'vertical' }

require'nvim-web-devicons'.setup {
	default = true,
}

require'nvim-tree'.setup {
}

require'nvim-treesitter.configs'.setup {
	highlight = { enable = true },
	indent = { enable = true }
}

require'fzf-lua'.setup {
	keymap = {
		fzf = {
			["ctrl-d"] = 'kill-line',
		}
	},
	fzf_bin = 'sk',
	files = {
		prompt       = 'Files❯ ',
		multiprocess = true,
		cmd          = 'fd --follow --hidden --color always --threads 4 --type f --type l --exclude .git',
	},
	grep = {
		prompt       = 'Rg❯ ',
		multiprocess = true,
		cmd          = 'rg --line-number --no-heading --smart-case --color always',
	},
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
		lualine_a = {
			{ 'mode' }
		},
		lualine_b = {
			{ 'branch' },
			{ 'diff', symbols = { added = '+', modified = '~', removed = '-' } },
			{ 'diagnostics' }
		},
		lualine_c = {
			{ 'filename', path = 1 }
		},
		lualine_x = {
			{ 'encoding' },
			{ 'fileformat' },
			{ 'filetype' }
		},
		lualine_y = {
			{ 'progress' }
		},
		lualine_z = {
			{ 'location' }
		}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {
			{ 'filename', path = 1 }
		},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	extensions = {}
}

require("neogit").setup {
	disable_signs = false,
	disable_hint = false,
	disable_context_highlighting = false,
	disable_commit_confirmation = false,
	-- Neogit refreshes its internal state after specific events, which can be expensive depending on the repository size.
	-- Disabling `auto_refresh` will make it so you have to manually refresh the status after you open it.
	auto_refresh = true,
	disable_builtin_notifications = false,
	use_magit_keybindings = false,
	commit_popup = {
		kind = "split",
	},
	-- Change the default way of opening neogit
	kind = "tab",
	-- customize displayed signs
	signs = {
		-- { CLOSED, OPENED }
		section = { ">", "v" },
		item = { ">", "v" },
		hunk = { "", "" },
	},
	integrations = {
		-- Neogit only provides inline diffs. If you want a more traditional way to look at diffs, you can use `sindrets/diffview.nvim`.
		-- The diffview integration enables the diff popup, which is a wrapper around `sindrets/diffview.nvim`.
		--
		-- Requires you to have `sindrets/diffview.nvim` installed.
		-- use {
		-- 'TimUntersberger/neogit',
		-- requires = {
		-- 'nvim-lua/plenary.nvim',
		-- 'sindrets/diffview.nvim'
		-- }
		-- }
		--
		diffview = true
	},
	-- Setting any section to `false` will make the section not render at all
	sections = {
		untracked = {
			folded = false
		},
		unstaged = {
			folded = false
		},
		staged = {
			folded = false
		},
		stashes = {
			folded = true
		},
		unpulled = {
			folded = true
		},
		unmerged = {
			folded = false
		},
		recent = {
			folded = true
		},
	},
	-- override/add mappings
	mappings = {
		-- modify status buffer mappings
		status = {
			-- Adds a mapping with "B" as key that does the "BranchPopup" command
			["B"] = "BranchPopup",
			-- Removes the default mapping of "s"
			["s"] = "",
		}
	}
}

require'rust-tools'.setup{
}

