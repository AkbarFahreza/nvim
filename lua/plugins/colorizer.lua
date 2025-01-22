return {
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    config = function()
      require("tailwindcss-colorizer-cmp").setup {
        color_square_width = 2,
      }
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        "*", -- Highlight all files
        css = { rgb_fn = true }, -- Enable parsing rgb(...) functions in CSS
        html = { names = true }, -- Disable color names like `Blue` or `Gray`
      }, {
        RGB      = true;         -- #RGB hex codes
    	RRGGBB   = true;         -- #RRGGBB hex codes
	    names    = true;         -- "Name" codes like Blue
	    RRGGBBAA = true;        -- #RRGGBBAA hex codes
	    rgb_fn   = true;        -- CSS rgb() and rgba() functions
	    hsl_fn   = true;        -- CSS hsl() and hsla() functions
	    css      = true;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	    css_fn   = true;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
	    mode     = 'background';       })

      -- To toggle colorizer
      vim.cmd [[ColorizerToggle]]
    end,
  },
}
