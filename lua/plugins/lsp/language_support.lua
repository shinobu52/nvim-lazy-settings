return {
  -- language support
  --- Rust
  'rust-lang/rust.vim',

  --- Javascript / Typescript
  'windwp/nvim-ts-autotag',

  --- Ruby / Lua
  {
    'nvim-treesitter-endwise',
    config = function()
      require('nvim-treesitter.configs').setup({
        endwise = {
          enable = true,
        }
      })
    end
  },

  --- Markdown
  'ixru/nvim-markdown',
  {
    'MeanderingProgrammer/markdown.nvim',
    name = 'render-markdown',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
    config = function()
        require('render-markdown').setup({})
    end,
  },
}
