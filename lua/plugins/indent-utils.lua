return {
  { -- Add indentation guides even on blank lines
    "lukas-reineke/indent-blankline.nvim",
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = "ibl",
    opts = {},
    enabled = false,
  },
  {
    -- Detects tabstop and shiftwidth automatically
    "NMAC427/guess-indent.nvim",
  },
}
