-- Highlight TODO and similar comments.
return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },

	opts = {
		signs = true,
		keywords = {
			NOTE = {
				icon = " ",
				color = "note",
			},
			PERF = {
				icon = " ",
				color = "performance",
			},
			WARN = {
				icon = " ",
				color = "warning",
			},
			TODO = {
				icon = " ",
				color = "todo",
			},
			BUG = {
				icon = " ",
				color = "error",
			},
		},
		colors = {
			note = { "DiagnosticInfo", "#75cfff" },
			performance = { "#e3a4fc" },
			warning = { "DiagnosticWarn" },
			todo = { "#abffa8" },
			error = { "DiagnosticError" },
		},
	},

	config = function(_, opts)
		require("todo-comments").setup(opts)
		vim.keymap.set(
			"n",
			"<leader>pcf",
			"<cmd>TodoTelescope<CR>"
		)
	end,
}
