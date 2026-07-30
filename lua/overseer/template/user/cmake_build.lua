return {
	name = "CMake Build",

	condition = {},

	builder = function()
		return {
			cmd = { "cmake",  "--build", "./build-debug" },
			components = { { "on_output_quickfix", open = true }, "default" },
		}
	end,
}
