local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "kojo.themes" },

		{ import = "kojo.plugins.alpha" },
		{ import = "kojo.plugins.blink-cmp" },
		{ import = "kojo.plugins.colorizer" },
		{ import = "kojo.plugins.comments" },
		{ import = "kojo.plugins.dap" }, -- TODO: Configure more C++, and C/Rust/Zig too.
		{ import = "kojo.plugins.flash" },
		{ import = "kojo.plugins.godot" },
		{ import = "kojo.plugins.harpoon" },
		{ import = "kojo.plugins.lazydev" },
		{ import = "kojo.plugins.lualine" },
		{ import = "kojo.plugins.markview" },
		{ import = "kojo.plugins.mason" },
		{ import = "kojo.plugins.surround" },
		{ import = "kojo.plugins.telescope" },
		{ import = "kojo.plugins.todo-comments" },
		{ import = "kojo.plugins.treesitter" }, -- BUG: Markdown.
		{ import = "kojo.plugins.treesj" },
		{ import = "kojo.plugins.undotree" },
		{ import = "kojo.plugins.zdiff" }, -- TODO: Reconfigure keybinds.
	},
	change_detection = { notify = false },
})
