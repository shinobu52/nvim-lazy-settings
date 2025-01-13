return {
  -- Fuzzy Finder
  {
    'junegunn/fzf',
    build = function()
      vim.fn['fzf#install']()
    end,
  },
  'junegunn/fzf.vim',
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'prochri/telescope-all-recent.nvim',
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "kkharji/sqlite.lua",
      "stevearc/dressing.nvim",
    },
  },
}
