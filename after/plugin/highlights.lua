vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client and client.name == "clangd" then
			vim.lsp.semantic_tokens.enable(false, { client_id = client.id, bufnr = args.buf })
		end
	end,
})

local theme = require("kanagawa.colors").setup().theme.syn

local colors = {
	identifier = "none",
	keyword = theme.keyword,
	controlFlowDisruptor = theme.special3,
	punctuation = theme.punct,
	operator = theme.operator,
	literal = "#f0c2d9",
	stringLiteral = theme.string,
	stringEscape = theme.regex,
}

vim.api.nvim_set_hl(0, "@variable.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@property.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@type.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@function.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@function.call.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@function.method.call.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@module.cpp", { fg = colors.identifier })

vim.api.nvim_set_hl(0, "@keyword.cpp", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "@keyword.type.cpp", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "@keyword.conditional.cpp", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "@type.builtin.cpp", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "@constant.builtin.cpp", { fg = colors.keyword })

vim.api.nvim_set_hl(0, "@keyword.return.cpp", { fg = colors.controlFlowDisruptor })

vim.api.nvim_set_hl(0, "@punctuation.bracket.cpp", { fg = colors.punctuation })
vim.api.nvim_set_hl(0, "@punctuation.delimiter.cpp", { fg = colors.punctuation })
vim.api.nvim_set_hl(0, "@keyword.import.cpp", { fg = colors.punctuation })

vim.api.nvim_set_hl(0, "@operator.cpp", { fg = colors.operator })
vim.api.nvim_set_hl(0, "@keyword.operator.cpp", { fg = colors.operator })

vim.api.nvim_set_hl(0, "@number.cpp", { fg = colors.literal })

vim.api.nvim_set_hl(0, "@string.cpp", { fg = colors.stringLiteral })

vim.api.nvim_set_hl(0, "@string.escape.cpp", { fg = colors.stringEscape })
