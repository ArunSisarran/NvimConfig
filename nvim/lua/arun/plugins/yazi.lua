return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    -- Required dependencies
    "MunifTanjim/nui.nvim",
    -- Optional but recommended
    "folke/snacks.nvim",
  },
  config = function()
    require("yazi").setup({
      -- Size and position of the floating window
      size = {
        width = 0.8,  -- 80% of editor width
        height = 0.8, -- 80% of editor height
      },
      
      -- Customize behavior when multiple files are selected
      multi_select = {
        -- How to handle multiple selected files (default: send to quickfix)
        -- You can customize this function if needed
      },
      
      -- Highlight buffers in same directory as hovered file
      highlight_hovered_buffers_in_same_directory = true,
      
      -- Optional integrations with other plugins
      integrations = {
        -- Default: uses telescope if available
        grep_in_directory = function(directory)
          -- Default implementation uses telescope
        end,
      },
    })
    
    -- Set up keymaps (outside the setup function)
    vim.keymap.set("n", "<leader>y", function() require("yazi").yazi() end, { desc = "Open Yazi file manager" })
  end,
}
