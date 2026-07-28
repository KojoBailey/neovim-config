-- Shows git diffs nicely.
return {
	"martindur/zdiff.nvim",
	cmd = "Zdiff",

	keys = {
		{
			"<leader>gd",
			function() require("zdiff").open() end,
			desc = "Zdiff (uncommitted)",
		},
		{
			"<leader>gD",
			function() require("zdiff").open("main") end,
			desc = "Zdiff (vs main)",
		},
	},

	opts = {
		default_expanded = false,

		default_branch = "main",

		keymaps = {
			help = "?",
			goto_file = "o",
			toggle = "<CR>",
			close = "q",
			refresh = "r",
			toggle_mode = "m",
			yank_ref = "gy",
		},

		icons = {
			collapsed = "",
			expanded = "",
			added = "+",
			deleted = "-",
			modified = "~",
		},
	},
}
