-- encoding
vim.o.encoding = 'utf-8'
vim.scriptencoding = 'utf-8'

-- visual
vim.o.ambiwidth = 'double'
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

vim.o.visualbell = true
vim.o.number = true
vim.o.showmatch = true
vim.o.matchtime = 1

vim.o.termguicolors = true

-- search
--vim.o.incsearch = true
--vim.o.ignorecase = true
--vim.o.smartcase = true
--vim.o.hlsearch = true
--vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':nohl<CR>', { noremap = true, silent = true})

-- manipulation
--vim.g.mapleader = ' '
--vim.opt.clipboard:append{'unnamedplus'}
--vim.o.ttimeout = true
--vim.o.ttimeoutlen = 50

--vim.o.undofile = true
--vim.o.undodir = vim.fn.stdpath('cache') .. '/undo'

--vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })
--vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })
--vim.api.nvim_set_keymap('n', '<Down>', 'gj', { noremap = true })
--vim.api.nvim_set_keymap('n', '<Up>', 'gk', { noremap = true })
--vim.api.nvim_set_keymap('n', 'gj', 'j', { noremap = true })
--vim.api.nvim_set_keymap('n', 'gk', 'k', { noremap = true })

-- check install & update Lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    lazyrepo,
    lazypath
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- import split plugins
require('lazy').setup({
  spec = {
    { import = 'plugins' },
    { import = 'config' },
  }
})

-- import neovide settings
--require('config/neovide')

-- import rls settings
--require('config/rls')

