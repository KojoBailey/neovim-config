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
					treesitter = false  -- disable ts previewing, use regex instead
				}
			}
		})

		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
		vim.keymap.set('n', '<C-p>', builtin.git_files, {})
		vim.keymap.set('n', '<leader>pws', function()
			local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set('n', '<leader>pWs', function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set('n', '<leader>ps', function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
	end
}

