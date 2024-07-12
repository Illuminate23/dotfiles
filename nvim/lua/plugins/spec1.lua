return {
    { "rose-pine/neovim", name = "rose-pine" },
    { "nvim-tree/nvim-web-devicons", lazy = true },
    {"nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("nvim-tree").setup {}
      end,},

      {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons'}
      },
      {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                              , branch = '0.1.x',
          dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...}

}
