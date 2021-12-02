require('lualine').setup {
  options = {
    -- theme = 'tokyonight'
    theme = 'onenord'
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {{'branch', fmt = function(str) return str:sub(1,17) end}},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {
      {
        'diagnostics',
        sources = {'ale'},
      }
    },
    lualine_z = {'location'}
  },
}
