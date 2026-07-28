-- Easy, LSP-assisted text completion.
return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	version = "1.*",

	-- https://cmp.saghen.dev/configuration/general.html
	opts = {
		keymap = { preset = "default" },

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			accept = { auto_brackets = { enabled = false }, },
			list = { selection = {
				preselect = true,
				auto_insert = false,
			}},
			documentation = { auto_show = true },
			ghost_text = { enabled = true },
		},

		signature = { enabled = true },

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = {
			implementation = "prefer_rust_with_warning",
		},

		cmdline = {
			keymap = { preset = "inherit" },
			completion = { menu = { auto_show = true } },
		},
	},

	opts_extend = { "sources.default" },
}
