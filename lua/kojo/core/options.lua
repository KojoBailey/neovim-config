vim.cmd("let g:netrw_liststyle = 3") -- Set file explorer default view (0-3).
	-- 3 = tree

vim.opt.termguicolors = true -- Support full 24-bit colours.

vim.opt.relativenumber = true -- Show relative line numbers.
vim.opt.number = true -- Show line number for selected line.
vim.opt.signcolumn = "yes" -- Column for special signs (git/LSP/etc.).
	-- "auto": Show when in use.
	-- "yes": Always show.
	-- "number": Merge with number column.

vim.opt.wrap = false -- Enable text wrapping.

vim.opt.cursorline = true -- Highlight current line.
vim.opt.cursorlineopt = "number"
	-- "line": Highlight entire line.
	-- "number": Only highlight number.
	-- "both": "line" + "number"

vim.opt.clipboard:append("unnamedplus") -- Yank, etc. to clipboard by default.

vim.opt.autocomplete = true -- Show autocomplete by default.
