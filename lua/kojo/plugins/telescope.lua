-- Use fuzzy search to jump to files and grep file content.
return {
	"nvim-telescope/telescope.nvim",

	tag = "0.1.5",

	dependencies = {
		"nvim-lua/plenary.nvim"
	},

	init = function()
		if not vim.treesitter.language.ft_to_lang then
			vim.treesitter.language.ft_to_lang = function(ft)
				return vim.treesitter.language.get_lang(ft)
				or (vim.filetype and vim.filetype.match and vim.filetype.match({ buf = 0 }))
				or ft
			end
		end
	end,

	config = function()
		vim.treesitter.language.ft_to_lang = vim.treesitter.language.ft_to_lang
			or function(ft) return ft end

		require("telescope").setup({
			defaults = {
				previewer = true,
				preview = {
					treesitter = false  -- disable treesitter previewing, use regex instead
				}
			}
		})

		local builtin = require("telescope.builtin")
		-- Search all files.
		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		-- Search Git files.
		vim.keymap.set("n", "<leader>pgf", builtin.git_files, {})
		-- Grep all files.
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		-- Grep current selection across all files.
		vim.keymap.set("v", "<leader>ps", function()
			local register_save = vim.fn.getreg("v");
			vim.cmd('noau normal! "vy')
			local selection = vim.fn.getreg("v")
			vim.fn.setreg("v", register_save)
			builtin.grep_string({ search = selection:gsub("\n", "") })
		end)
		-- Search help files.
		vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
	end
}
