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

		{ import = "kojo.plugins.alpha" }, -- TODO: Customise for fun.
		-- { import = "kojo.plugins.cmp" }, -- FIX: Doesn't seem to work at all.
		{ import = "kojo.plugins.colorizer" },
		{ import = "kojo.plugins.comments" }, -- TODO: Add keybinds/commands for auto-adding tagged comments.
		{ import = "kojo.plugins.dap" }, -- TODO: Configure more C++, and C/Rust/Zig too.
		{ import = "kojo.plugins.flash" }, -- TODO: Figure out how to use effectively.
		{ import = "kojo.plugins.fugitive" }, -- TODO: Figure out how to use effectively.
		-- { import = "kojo.plugins.godot" }, -- TODO: Re-evaluate.
		{ import = "kojo.plugins.harpoon" }, -- TODO: Make more efficient.
		{ import = "kojo.plugins.lazydev" },
		{ import = "kojo.plugins.lualine" }, -- TODO: Customise for fun.
		{ import = "kojo.plugins.markview" }, -- TODO: Consider changing keybinds.
		{ import = "kojo.plugins.mason" },
		{ import = "kojo.plugins.surround" }, -- TODO: Configure keybinds.
		{ import = "kojo.plugins.telescope" }, -- TODO: Configure big time.
		{ import = "kojo.plugins.todo-comments" }, -- TODO: Customise styling.
		{ import = "kojo.plugins.treesitter" }, -- FIX: Markdown.
		{ import = "kojo.plugins.treesj" }, -- TODO: Reconfigure keybinds.
		{ import = "kojo.plugins.undotree" },
		{ import = "kojo.plugins.zdiff" }, -- TODO: Reconfigure keybinds.
	},
	change_detection = { notify = false },
})
