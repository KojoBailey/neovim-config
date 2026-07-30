return {
	-- https://luals.github.io/wiki/settings/
	settings = {
		Lua = {
			hint = {
				enable = true,
				arrayIndex = "Disable",
				await = true,
				awaitPropogate = false,
				paramName = "All",
				paramType = true,
				semicolon = "SameLine",
				setType = false,
			},
			diagnostics = {
				globals = { "vim", "hl" },
			},
			workspace = {
				checkThirdParty = false,
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
}
