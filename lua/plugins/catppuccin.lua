return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- Make sure it loads before other plugins
		lazy = false, -- Load it immediately (not lazily)
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
				transparent_background = false,
				term_colors = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					telescope = true,
					treesitter = true,
					-- Add more integrations as needed
				},
			})

			-- Apply the colorscheme
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
