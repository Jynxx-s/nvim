return {
	"folke/trouble.nvim",
	opts = {
		modes = {
			diagnostics = {
				auto_open = false,
				auto_close = false,
			},
			workspace_diagnostics = {
				auto_open = false,
				auto_close = false,
			},
		},
	},
	config = function(_, opts)
		local trouble = require("trouble")
		trouble.setup(opts)

		vim.keymap.set("n", "<leader>xx", function()
			trouble.open("diagnostics", { focus = false })
		end, { desc = "Open diagnostics (Trouble)" })
	end,
}
