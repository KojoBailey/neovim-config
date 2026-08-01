return {
	name = "Build",

	condition = {},

	builder = function()
		return { cmd = { "./build.sh" }, }
	end,
}
