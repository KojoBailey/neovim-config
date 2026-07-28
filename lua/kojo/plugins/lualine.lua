-- Allows easy customisation of the bottom bar using Lua.
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		lualine.setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = '', right = ''},
				section_separators = { left = '', right = ''},
			},
			sections = {
				lualine_a = {
					"mode",
				},
				lualine_b = {
					"branch",
					"diff",
				},
				lualine_c = {
					"diagnostics",
					{ "filename", path = 1 }
				},
				lualine_x = {
					"lsp_status",
					"filetype",
				},
				lualine_y = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
					},
					"encoding",
					"fileformat",
				},
				lualine_z = {
					"location",
				},
			},
		})

		vim.api.nvim_create_autocmd("ColorScheme", {
			group = vim.api.nvim_create_augroup("SalarLualineThemeSync", { clear = true }),
			callback = function()
				lualine.refresh()
			end,
		})
	end,
}
