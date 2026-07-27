return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter.parsers").get_parser_configs().c3 = {
			install_info = {
				url = "https://github.com/c3lang/tree-sitter-c3",
				files = { "src/parser.c", "src/scanner.c" },
				branch = "main",
			},
			filetype = "c3",
		}

		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"asm",
				"c",
				"cpp",
				"fsharp",
				"haskell",
				"html",
				"java",
				"javascript",
				"lua",
				"nim",
				"ocaml",
				"ocaml_interface",
				"rust",
				"tsx",
				"typescript",
				"yaml",
			},
			highlight = { enable = true },
		})

		vim.filetype.add({ extension = { c3 = "c3" } })
	end,
}
