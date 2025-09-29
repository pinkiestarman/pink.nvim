-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'
vim.cmd.colorscheme 'cyberdream'

require('lualine').setup {
  tabline = {
    lualine_a = { 'tabs' },
    lualine_b = { 'buffers' },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  options = {
    theme = 'synthweave',
  },
}

-- Change the colorscheme here
-- to find out which which colorschemes are installed
-- type ':colo ' and tab through the list
-- you can find more at https://dotfyle.com/neovim/colorscheme/trending
