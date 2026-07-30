vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client --[[ and client.name == "clangd" ]] then
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
vim.api.nvim_set_hl(0, "@variable.member.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@variable.parameter.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@constant.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@property.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@type.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@type.definition.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@function.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@function.call.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@function.method.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@function.method.call.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@function.macro.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@constructor.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@module.cpp", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@variable.lua", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@variable.member.lua", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@variable.parameter.lua", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@property.lua", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@function.lua", { fg = colors.identifier })
vim.api.nvim_set_hl(0, "@function.call.lua", { fg = colors.identifier })

vim.api.nvim_set_hl(0, "@type.builtin.cpp", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "@variable.builtin.cpp", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "@constant.builtin.cpp", { fg = colors.keyword })

vim.api.nvim_set_hl(0, "@keyword.return.cpp", { fg = colors.controlFlowDisruptor })

vim.api.nvim_set_hl(0, "@punctuation.bracket.cpp", { fg = colors.punctuation })
vim.api.nvim_set_hl(0, "@punctuation.delimiter.cpp", { fg = colors.punctuation })
vim.api.nvim_set_hl(0, "@keyword.import.cpp", { fg = colors.punctuation })
vim.api.nvim_set_hl(0, "@keyword.directive.cpp", { fg = colors.punctuation })
vim.api.nvim_set_hl(0, "@keyword.directive.define.cpp", { fg = colors.punctuation })
vim.api.nvim_set_hl(0, "@punctuation.bracket.lua", { fg = colors.punctuation })
vim.api.nvim_set_hl(0, "@punctuation.delimiter.lua", { fg = colors.punctuation })
vim.api.nvim_set_hl(0, "@constructor.lua", { fg = colors.punctuation })

vim.api.nvim_set_hl(0, "@keyword.cpp", { fg = colors.operator })
vim.api.nvim_set_hl(0, "@keyword.type.cpp", { fg = colors.operator })
vim.api.nvim_set_hl(0, "@keyword.conditional.cpp", { fg = colors.operator })
vim.api.nvim_set_hl(0, "@keyword.modifier.cpp", { fg = colors.operator })
vim.api.nvim_set_hl(0, "@keyword.operator.cpp", { fg = colors.operator })
vim.api.nvim_set_hl(0, "@constant.builtin.cpp", { fg = colors.operator })
vim.api.nvim_set_hl(0, "@operator.cpp", { fg = colors.operator })
vim.api.nvim_set_hl(0, "@attribute.cpp", { fg = colors.operator })
vim.api.nvim_set_hl(0, "@function.builtin.lua", { fg = colors.operator })
vim.api.nvim_set_hl(0, "@module.builtin.lua", { fg = colors.operator })

vim.api.nvim_set_hl(0, "@number.cpp", { fg = colors.literal })
vim.api.nvim_set_hl(0, "@boolean.cpp", { fg = colors.literal })
vim.api.nvim_set_hl(0, "@number.lua", { fg = colors.literal })
vim.api.nvim_set_hl(0, "@boolean.lua", { fg = colors.literal })

vim.api.nvim_set_hl(0, "@string.cpp", { fg = colors.stringLiteral })
vim.api.nvim_set_hl(0, "@string.lua", { fg = colors.stringLiteral })

vim.api.nvim_set_hl(0, "@string.escape.cpp", { fg = colors.stringEscape })
vim.api.nvim_set_hl(0, "@string.escape.lua", { fg = colors.stringEscape })
