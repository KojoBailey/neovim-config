require("kojo")

vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
		spacing = 2,
		severity = { min = vim.diagnostic.severity.HINT },
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
