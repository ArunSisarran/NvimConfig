return {
  "ellisonleao/gruvbox.nvim",
  event = "VeryLazy",
  priority = 1000, -- Make sure this loads before other colorschemes
  config = function()
    -- Set background to dark mode
    vim.o.background = "dark"
    
    require("gruvbox").setup({
      -- Add Neovim terminal colors
      terminal_colors = true,
      
      -- Text style options
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      
      -- Color inversion options
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      
      -- Contrast can be "hard", "soft" or empty string
      contrast = "", -- Default contrast works well for dark mode
      
      -- You can override specific palette colors if needed
      palette_overrides = {},
      
      -- You can override highlight groups
      overrides = {
        -- Example of customizing a highlight group:
        -- Comment = { fg = "#928374", italic = true }
      },
      
      -- Other options
      dim_inactive = false,
      transparent_mode = false,
    })
    
    -- Apply the colorscheme
    vim.cmd("colorscheme gruvbox")
  end,
}
