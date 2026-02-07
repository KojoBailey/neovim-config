-- Use asmfmt for the '=' operator
vim.bo.equalprg = "asmfmt"

vim.opt_local.expandtab = false
vim.opt_local.shiftwidth = 8
vim.opt_local.tabstop = 8

-- Disable other indent logic that might conflict
vim.bo.indentexpr = ""
