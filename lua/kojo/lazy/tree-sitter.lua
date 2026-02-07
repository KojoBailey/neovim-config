return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',

	config = function()
		local ts = require('nvim-treesitter')

		-- 1. Install the parsers you need
		ts.install({
			"tsx",
			"typescript", 
			"javascript",
			"html",
			"lua",
			"asm",
		})

		-- 2. Manually enable Treesitter indentation for the current buffer
		-- This is the "new" way to do it since the global setup is gone
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { 
				"typescript", 
				"typescriptreact", 
				"javascript", 
				"javascriptreact",
			},
			callback = function()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end
}
