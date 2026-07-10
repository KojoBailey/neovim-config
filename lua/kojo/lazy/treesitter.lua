return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	commit = '066fd650',
	config = function()
		require('nvim-treesitter.parsers').get_parser_configs().c3 = {
			install_info = {
				url = "https://github.com/c3lang/tree-sitter-c3",
				files = { "src/parser.c", "src/scanner.c" },
				branch = "main",
			},
			filetype = "c3",
		}

		require('nvim-treesitter.configs').setup({
			ensure_installed = {
				"java", "typescript", "javascript", "tsx",
				"html", "lua", "rust", "cpp", "c",
				"haskell", "ocaml", "ocaml_interface", "asm",
				"c3", "nim", "fsharp", "yaml",
			},
			highlight = { enable = true },
		})

		vim.filetype.add({ extension = { c3 = "c3" } })
	end,
}
