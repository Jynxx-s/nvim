return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>")

			require("neo-tree").setup({
				filesystem = {
					filtered_items = {
						hide_gitignored = false,
					},
					follow_current_file = { enabled = true }, -- optional
				},

				default_component_configs = {
					diagnostics = {
						enabled = true,
						symbols = {
							error = "",
							warn = "",
							info = "",
							hint = "󰌶",
						},
						highlights = {
							error = "DiagnosticSignError",
							warn = "DiagnosticSignWarn",
							info = "DiagnosticSignInfo",
							hint = "DiagnosticSignHint",
						},
					},
				},
			})
		end,
	},
}
