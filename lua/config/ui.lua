return {
  -- UI extension
  {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  },
  'nvim-tree/nvim-web-devicons',
  {
    'kevinhwang91/nvim-hlslens',
    config = function()
      require('hlslens').setup()
    end
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    init = function() vim.g.barbar_auto_setup = false end,
  },
  'kazhala/close-buffers.nvim',
  'kevinhwang91/nvim-bqf',
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
  },
  'petertriho/nvim-scrollbar',
  {
    'folke/noice.nvim',
    event = 'VeryLazy', 
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require'colorizer'.setup({'*'})
    end
  },
  'echasnovski/mini.indentscope',
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup()
    end
  },
  {
    'gen740/SmoothCursor.nvim',
    config = function()
      require('smoothcursor').setup()
    end
  },
  {
    'mvllow/modes.nvim',
    config = function()
      require('modes').setup()
    end
  },
  'stevearc/dressing.nvim',
  'mhartington/formatter.nvim',
  {
    'b0o/incline.nvim',
    config = function()
      require('incline').setup()
    end,
    event = 'VeryLazy',
  },
  {
    "tversteeg/registers.nvim",
    config = function()
      require("registers").setup()
    end,
  },
}
