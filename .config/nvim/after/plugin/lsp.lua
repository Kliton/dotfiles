local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = { "rust_analyzer", "tsserver", "lua_ls", "gopls", "jsonls", },
	handlers = {
		lsp_zero.default_setup,
	},
})

lsp_zero.set_sign_icons({
	error = "✘",
	warn = "▲",
	hint = "⚑",
	info = "»",
})

lsp_zero.format_on_save({
	servers = {
		["null-ls"] = { "javascript", "typescript", "lua" },
		["lua_ls"] = { "lua" },
		["tsserver"] = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
	},
})
