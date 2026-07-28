require("kojo")

-- Enable inline diagnostics.
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

-- Enable inlay hints globally.
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
	end,
})
