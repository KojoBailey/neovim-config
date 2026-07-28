return {
	name = "clang++ build",

	condition = {
		filetype = { "cpp" },
	},

	builder = function()
		local file = vim.fn.expand("%:p")
		return {
			cmd = { "clang++", file },
			components = { { "on_output_quickfix", open = true }, "default" },
		}
	end,
}
