local C = require("vohurias.palette")

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ==========================================================
-- BASE UI (editor, ventanas, mensajes)
-- ==========================================================
hl("Normal", { bg = C.bg, fg = C.white }) ---
hl("NormalNC", { bg = C.bg, fg = C.gray })
hl("NormalFloat", { bg = C.bg, fg = C.white })
hl("FloatBorder", { bg = C.bg, fg = C.lime })
hl("FloatTitle", { bg = C.bg, fg = C.hotpink, bold = true })
hl("WinSeparator", { bg = C.bg, fg = C.turquoise })
hl("VertSplit", { bg = C.bg, fg = C.red })
hl("EndOfBuffer", { bg = C.bg, fg = C.bg })
hl("NonText", { bg = C.bg, fg = C.gray })
hl("SignColumn", { bg = C.bg })
hl("FoldColumn", { bg = C.bg, fg = C.gray })
hl("Folded", { bg = C.bg, fg = C.gray, italic = true })
hl("ColorColumn", { bg = C.bg })
hl("Conceal", { bg = C.bg })

-- Números de línea
hl("LineNr", { bg = C.bg, fg = C.gray })
hl("LineNrNC", { bg = C.bg, fg = C.gray })
hl("LineNrAbove", { bg = C.bg, fg = C.gray })
hl("LineNrBelow", { bg = C.bg, fg = C.gray })
hl("CursorLine", { bg = C.bg, underline = true })
hl("CursorLineNr", { bg = C.bg, fg = C.hotpink, bold = true })
hl("CursorColumn", { bg = C.bg })

-- Barra de estado / tabline / winbar
hl("StatusLine", { bg = C.bg, fg = C.yellow })
hl("StatusLineNC", { bg = C.bg, fg = C.gray })
hl("WinBar", { bg = C.bg })
hl("WinBarNC", { bg = C.bg })
hl("TabLine", { bg = C.bg })
hl("TabLineFill", { bg = C.bg })
hl("TabLineSel", { bg = C.bg, fg = C.hotpink, bold = true })

-- Selección / búsqueda
hl("Visual", { bg = C.eblue })
hl("VisualNOS", { bg = C.eblue })
hl("Search", { bg = C.yellow, fg = C.black, bold = true })
hl("IncSearch", { bg = C.orange, fg = C.black, bold = true })
hl("CurSearch", { bg = C.hotpink, fg = C.black, bold = true })

-- Mensajes / comandos
hl("MsgArea", { bg = C.bg })
hl("MsgSeparator", { bg = C.bg })
hl("ModeMsg", { bg = C.bg, fg = C.blue })
hl("MoreMsg", { bg = C.bg, fg = C.green })
hl("Question", { bg = C.bg, fg = C.green })
hl("ErrorMsg", { bg = C.bg, fg = C.red, bold = true })
hl("WarningMsg", { bg = C.bg, fg = C.red, bold = true })

-- Menú de autocompletado nativo
hl("Pmenu", { bg = C.bg, fg = C.turquoise })
hl("PmenuSel", { bg = C.white, fg = C.black, bold = true })
hl("PmenuSbar", { bg = C.bg })
hl("PmenuThumb", { bg = C.turquoise })

-- ==========================================================
-- SINTAXIS
-- ==========================================================
hl("Comment", { fg = C.gray, italic = true })
hl("Keyword", { fg = C.magenta, italic = true })
hl("Statement", { fg = C.magenta, italic = true })
hl("Conditional", { fg = C.hotpink, bold = true })
hl("Repeat", { fg = C.hotpink, bold = true })
hl("Function", { fg = C.blue, bold = true })
hl("Type", { fg = C.turquoise })
hl("Identifier", { fg = C.orange })
hl("Variable", { fg = C.orange })
hl("String", { fg = C.green })
hl("Number", { fg = C.yellow })
hl("Boolean", { fg = C.yellow, bold = true })
hl("Constant", { fg = C.orange })
hl("Operator", { fg = C.red })
hl("Delimiter", { fg = C.purple })
hl("Special", { fg = C.white })
hl("Underlined", { fg = C.blue, underline = true })
hl("Title", { fg = C.turquoise, bold = true })

-- ==========================================================
-- DIAGNÓSTICOS LSP
-- ==========================================================
hl("DiagnosticError", { fg = C.red })
hl("DiagnosticWarn", { fg = C.red })
hl("DiagnosticInfo", { fg = C.turquoise })
hl("DiagnosticHint", { fg = C.gray })
hl("DiagnosticFloatingError", { bg = C.bg, fg = C.red })
hl("DiagnosticFloatingWarn", { bg = C.bg, fg = C.red })
hl("DiagnosticVirtualTextError", { bg = C.bg, fg = C.red })
hl("DiagnosticVirtualTextWarn", { bg = C.bg, fg = C.red })
hl("DiagnosticUnderlineError", { undercurl = true, sp = C.red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = C.red })

-- Spell (evita fondo blanco por defecto)
hl("SpellBad", { undercurl = true, sp = C.red, bg = C.bg })
hl("SpellCap", { undercurl = true, sp = C.yellow, bg = C.bg })
hl("@spell", { bg = C.bg, force = true })
hl("@spell.markdown", { bg = C.bg, fg = "NONE", force = true })

-- ==========================================================
-- PLUGINS COMUNES EN LAZYVIM
-- ==========================================================
-- lazy.nvim / mason.nvim
hl("LazyNormal", { bg = C.bg })
hl("MasonNormal", { bg = C.bg })

-- Telescope
hl("TelescopeNormal", { bg = C.bg })
hl("TelescopeBorder", { bg = C.bg, fg = C.turquoise })
hl("TelescopePromptNormal", { bg = C.bg })
hl("TelescopePromptBorder", { bg = C.bg, fg = C.hotpink })
hl("TelescopeTitle", { fg = C.hotpink, bold = true })
hl("TelescopeSelection", { bg = C.eblue, bold = true })

-- which-key
hl("WhichKeyFloat", { bg = C.bg })
hl("WhichKeyBorder", { bg = C.bg, fg = C.turquoise })

-- nvim-notify
hl("NotifyBackground", { bg = C.bg })

-- nvim-cmp / blink.cmp
hl("CmpNormal", { bg = C.bg })
hl("CmpDocumentation", { bg = C.bg })
hl("CmpDocumentationBorder", { bg = C.bg, fg = C.turquoise })
hl("CmpItemAbbrMatch", { fg = C.hotpink, bold = true })

-- neo-tree / nvim-tree
hl("NeoTreeNormal", { bg = C.bg })
hl("NeoTreeNormalNC", { bg = C.bg })
hl("NvimTreeNormal", { bg = C.bg })
hl("NvimTreeWinSeparator", { bg = C.bg, fg = C.turquoise })

-- bufferline
hl("BufferLineFill", { bg = C.bg })
