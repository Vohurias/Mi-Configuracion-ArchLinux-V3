local C = require("vohurias.palette")

local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

local hooks = require("ibl.hooks")
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = C.red })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = C.yellow })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = C.blue })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = C.orange })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = C.green })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = C.violet })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = C.turquoise })
end)

require("ibl").setup({ indent = { highlight = highlight } })
vim.g.rainbow_delimiters = { highlight = highlight }
