return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			vim.opt.termguicolors = true

			require("bufferline").setup({
				options = {
					diagnostics = "nvim_lsp",
					diagnostics_indicator = function(count, level, diagnostics_dict, context)
						local icons = {
							error = " ",
							warning = " ",
							info = " ",
							hint = "󰌵 ",
						}
						local result = ""
						for type, icon in pairs(icons) do
							if diagnostics_dict[type] then
								result = result .. icon .. diagnostics_dict[type] .. " "
							end
						end
						return result
					end,
				},
			})

			-- Buffer navigation keybindings
			vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
			vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
			vim.keymap.set("n", "<leader>bd", "<Cmd>bdelete<CR>", { desc = "Delete buffer" })

			-- Go to buffer 1–9
			for i = 1, 9 do
				vim.keymap.set("n", "<leader>" .. i, function()
					vim.cmd("buffer " .. i)
				end, { desc = "Go to buffer " .. i })
			end
		end,
	},
}
