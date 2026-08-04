-- Improve syntax highlighting and code formatting capabilities.
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",

	config = function()
		-- require("nvim-treesitter.parsers").get_parser_configs().c3 = {
		-- 	install_info = {
		-- 		url = "https://github.com/c3lang/tree-sitter-c3",
		-- 		files = { "src/parser.c", "src/scanner.c" },
		-- 		branch = "main",
		-- 	},
		-- 	filetype = "c3",
		-- }

		require("nvim-treesitter").install({
				"bash",
				"c",
				"cpp",
				"html",
				"lua",
				"markdown",
				"markdown_inline",
				"rust",
				"yaml",
		})

		-- vim.filetype.add({ extension = { c3 = "c3" } })
	end,
}
