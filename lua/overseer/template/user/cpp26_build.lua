return {
	name = "c++26 clang++ build",

	condition = {
		filetype = { "cpp" },
	},

	builder = function()
		local file = vim.fn.expand("%:p")
		return {
			cmd = { "clang++", file, "--std=c++26" },
			components = { { "on_output_quickfix", open = true }, "default" },
		}
	end,
}
