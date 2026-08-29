return {
  {
    "folke/tokyonight.nvim",
    opts = {
      styles = {
        comments = {
          italic = false,
        },
      },
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        italic = {
          strings = true,
          comments = false,
          operators = true,
          folds = true,
          emphasis = true,
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
