require("kojo.remap")
require("kojo.lazy_init")

print("Welcome back to Neovim, Kojo Bailey.")

if vim.fn.has("win32") == 1 then
	vim.opt.shell = "powershell"
	vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
	vim.opt.shellquote = ""
	vim.opt.shellxquote = ""
end

if vim.fn.has("persistent_undo") == 1 then
    local target_path = vim.fn.expand('~/.undodir')

    if vim.fn.isdirectory(target_path) == 0 then
        vim.fn.mkdir(target_path, "p", 0700)
    end

    vim.opt.undodir = target_path
    vim.opt.undofile = true
end

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true

vim.g.undotree_DiffCommand = "C:/Program Files/Git/usr/bin/diff.exe"
