return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ensure_installed = {},
				"stylua", -- Lua formatter
				"prettier", -- Prettier formatter
				"black",
				"isort",
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "html", "cssls", "ts_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
    lazy = false,
		config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
			vim.lsp.config("lua_ls", {
        capabilities = capabilities,
				settings = {
					["lua_ls"] = {},
				},
			})
			vim.lsp.config("pyright", {
        capabilities = capabilities,
				settings = {
					["pyright"] = {},
				},
			})
			vim.lsp.config("html", {
        capabilities = capabilities,
				settings = {
					["html"] = {},
				},
			})
			vim.lsp.config("cssls", {
        capabilities = capabilities,
				settings = {
					["cssls"] = {},
				},
			})
			vim.lsp.config("ts_ls", {
        capabilities = capabilities,
				settings = {
					["ts_ls"] = {},
				},
			})
			vim.diagnostic.config({
				virtual_text = {
					prefix = "■", -- Could be '■', '▎', 'x'
					spacing = 2,
					source = "if_many",
				},
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
				float = {
					source = "always",
					border = "rounded",
					header = "",
					prefix = "",
				},
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
