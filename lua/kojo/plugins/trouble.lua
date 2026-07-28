return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	cmd = "Trouble",

	opts = {},

	keys = {
		{
			"<leader>xx",
			"<CMD>Trouble diagnostics toggle<CR>",
		},
	},
}
