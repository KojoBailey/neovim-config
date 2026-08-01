return {
	name = "CMake Run Debug",

	condition = {
		callback = function()
			return vim.fn.filereadable(vim.fn.getcwd() .. "/CMakeLists.txt") == 1
		end,
	},

	builder = function()
		local cmake_lines = vim.fn.readfile(vim.fn.getcwd() .. "/CMakeLists.txt")
		local project_name
		for _, line in ipairs(cmake_lines) do
			project_name = line:match("project%s*%(%s*[\"']?([%w_%-]+)")
			if project_name then break end
		end
		print("DEBUG project_name:", project_name)
		return {
			cmd = { vim.fn.getcwd() .. "/build-debug/" .. project_name },
		}
	end,
}

