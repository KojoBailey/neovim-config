vim.cmd("let g:netrw_liststyle = 0") -- Set file explorer default view (0-3).
	-- 0 = alphabetical
	-- 1 = date
	-- 2 = inline
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

-- Conflicts with blink.cmp.
vim.opt.autocomplete = false -- Show autocomplete by default.

vim.api.nvim_create_user_command("Build", "!./build.sh", {})
vim.api.nvim_create_user_command("Run", "!./run.sh", {})
