return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },

  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.vscode-nvim" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.github-nvim-theme" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },

  { import = "astrocommunity.scrolling.satellite-nvim" },
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
