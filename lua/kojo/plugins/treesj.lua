-- Split and join blocks of code easily.
return {
	"Wansmer/treesj",
	dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`

	config = function()
		require("treesj").setup({--[[ your config ]]})

		vim.keymap.set("n", "<leader>j", require("treesj").toggle)
	end,
}
