return {
	"OXY2DEV/markview.nvim",
	lazy = false,

	config = function()
		require("markview").setup({
			preview = { enable = false }
		})

		vim.keymap.set("n", "<leader>mm", "<CMD>Markview toggle<CR>")
		vim.keymap.set("n", "<leader>ms", "<CMD>Markview splitToggle<CR>")
	end
}
