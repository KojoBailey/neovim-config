return {
	name = "CMake Build Release",

	condition = {
		callback = function()
			return vim.fn.filereadable(vim.fn.getcwd() .. "/CMakeLists.txt") == 1
		end,
	},

	builder = function()
		return {
			cmd = { "cmake" },
			args = { "--build", "./build-release" },
		}
	end,
}
