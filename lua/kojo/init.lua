require("kojo.remap")
require("kojo.lazy_init")

print("Welcome back to Neovim, Kojo Bailey.")

if vim.fn.has("win32") == 1 then
	vim.opt.shell = "powershell"
	vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
	vim.opt.shellquote = ""
	vim.opt.shellxquote = ""
end

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true
