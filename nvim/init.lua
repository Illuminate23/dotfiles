require("config.lazy")

vim.o.smarttab = true
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.mouse = a
vim.o.background = dark
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.syntax = true
vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd.colorscheme "shado"
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4

vim.wo.number = true


vim.keymap.set('n', '<c-t>', ':NvimTreeOpen<CR>')

require("nvim-tree").setup()

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<c-f>', builtin.find_files, {})

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'shado',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
