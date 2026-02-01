return {
  "rebelot/kanagawa.nvim",
  lazy = false,    -- Load on startup
  priority = 1000, -- Load before everything else
  config = function()
    require('kanagawa').setup({
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      keywordStyle = { italic = true },
      transparent = true,
      theme = "wave", -- Try "dragon" if you want it darker
    })

    -- Activate the theme
    vim.cmd("colorscheme kanagawa")
  end,
}
