-- Use asmfmt for the '=' operator
vim.bo.equalprg = "asmfmt"

-- Function to fix NASM specific syntax that asmfmt breaks
local function fix_nasm_syntax()
	local save_cursor = vim.fn.winsaveview()

	-- Fix 'section.text' -> 'section .text'
	-- The 'e' flag prevents errors if no match is found
	vim.cmd([[silent! %s/\vsection\.([a-z]+)/section .\1/ge]])

	-- Fix 'global.symbol' -> 'global symbol' if needed
	vim.cmd([[silent! %s/\vglobal\.([a-zA-Z0-9_]+)/global \1/ge]])

	vim.fn.winrestview(save_cursor)
end

-- Run the fix automatically after the '=' operator (ShellFilterPost)
vim.api.nvim_create_autocmd("ShellFilterPost", {
	group = group,
	buffer = 0,
	callback = fix_nasm_syntax,
})

vim.opt_local.expandtab = false
vim.opt_local.shiftwidth = 8
vim.opt_local.tabstop = 8

-- Disable other indent logic that might conflict
vim.bo.indentexpr = ""
