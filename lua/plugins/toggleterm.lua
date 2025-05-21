return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				direction = "float",
				close_on_exit = true,
				open_mapping = [[<c-t>]],
				float_opts = {
					border = "curved",
				},
			})
		end,
	},
}
