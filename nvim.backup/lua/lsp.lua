vim.lsp.set_log_level("debug")

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, { noremap = true, silent = true })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, silent = true })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap = true, silent = true })
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, { noremap = true, silent = true })

local lsp_installer = require'nvim-lsp-installer'
lsp_installer.setup({
	automatic_installation = true,
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗"
		}
	}
})

local lspconfig = require'lspconfig'
for _, server in ipairs(lsp_installer.get_installed_servers()) do
	local lsp_config_opts = {
		capabilities = require"cmp_nvim_lsp".update_capabilities(
			vim.lsp.protocol.make_client_capabilities()
		),
		flags = {
			debounce_text_changes = 150,
		},
		on_attach = function (_, bufnr)
			vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

			local bufopts = { noremap=true, silent=true, buffer=bufnr }
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
			vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
			vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
			vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
			vim.keymap.set('n', '<space>wl', function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, bufopts)
			vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
			vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
			vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
			vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
		end
	}
	if server.name == 'sumneko_lua' then
		local lua_lsp_opts = require'lua-dev'.setup({ lspconfig = lsp_config_opts })
		lspconfig[server.name].setup(lua_lsp_opts)
	else
		lspconfig[server.name].setup(lsp_config_opts)
	end
end

