vim.lsp.config('rust_analyzer', {
	settings = {
		["rust-analyzer"] =  {
			procMacro = {
				ignored = {
					leptos_macro = {
						"server",
					},
				},
			},
		},
	}
})
