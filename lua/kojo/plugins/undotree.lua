return {
	"mbbill/undotree",
	config = function()
		if vim.fn.has("win32") == 1 then
			vim.g.undotree_DiffCommand = "C:/Program Files/Git/usr/bin/diff.exe"
		else
			vim.g.undotree_DiffCommand = "diff"
		end

		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end
}
