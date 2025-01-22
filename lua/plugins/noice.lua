return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup {
      cmdline = {
        view = "cmdline_popup", -- Use the popup style for the command line
        format = {
          cmdline = { pattern = "^:", icon = "", lang = "vim" },
          search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
          search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
        },
      },
      views = {
        cmdline_popup = {
          position = {
            row = "50%", -- Centered vertically
            col = "50%", -- Centered horizontally
          },
          size = {
            width = 60, -- Adjust width as needed
            height = "auto", -- Adjust height dynamically
          },
          border = {
            style = "rounded", -- Rounded borders
            padding = { 1, 1 }, -- Padding: 1 row above/below, 2 columns on left/right
          },
          win_options = {
            winblend = 10, -- Transparency effect
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder", -- Highlight groups
          },
        },
      },
      messages = {
        enabled = true, -- Enables the messages view
      },
      popupmenu = {
        enabled = true, -- Enables the popupmenu view
      },
      lsp = {
        progress = { enabled = false }, -- Disable LSP progress messages
      },
      presets = {
        command_palette = true, -- Enable command palette style
        lsp_doc_border = true, -- Add border to hover docs and signature help
      },
    }

    -- Optional: Customize Noice's command display further if needed
  end,
}
