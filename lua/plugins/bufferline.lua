return {
  {
    'akinsho/bufferline.nvim',
    confi = function()
      require('bufferline').setup({
        options = {
          separator_style = 'thick',
          show_buffer_close_icons = true,
          show_close_icon = true,
          color_icons = true,
        },
        highlights = {
          separator = {
            fg = '#073642',
            bg = '#000000',
          },
          background = {
            fg = '#657b83',
            bg = '#444444'
          },
          buffer_selected = {
            fg = '#ffffff',
            bg = '#000000',
            bold = true,
          },
          fill = {
            bg = '#073642'
          }
        },
      })
    end,
    dependencies = 'nvim-tree/nvim-web-devicons',
  },
}
