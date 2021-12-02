-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer", "NvimTree", "vim-plug"}
-- vim.g.tokyonight_hide_inactive_statusline = true
-- vim.g.tokyonight_style = "night"
-- vim.cmd[[colorscheme tokyonight]]
local colors = require("onenord.colors")

require("onenord").setup({
  custom_highlights = {
    TablineSel = { fg = colors.fg, bg = colors.selection }
  },
})

--vim.cmd[[colorscheme base16-darktooth]]
--let g:gruvbox_italic=1
--let g:gruvbox_contrast_dark = 'medium'
