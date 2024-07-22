return {
  -- laungage server
  {'neoclide/coc.nvim', branch = 'release'},
  {
    'j-hui/fidget.nvim',
    config = function()
      require('fidget').setup()
    end
  },
  {
    'stevearc/aerial.nvim',
  },
  -- TODO: 以下のLintをCocで賄えないか？
  {
    'dense-analysis/ale',
    config = function()
      local g = vim.g
      g.ale_ruby_rubocop_auto_correct_all = 1
      g.ale_linters = {
        ruby = {'rubocop', 'ruby'},
        lua = {'lua_language_server'}
      }
    end
  },
  {
    'stevearc/conform.nvim',
    opts = {},
  },
}
