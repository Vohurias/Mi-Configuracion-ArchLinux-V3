return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  ft = { "markdown", "norg", "rmd", "org" },

  -- Configuración de colores personalizados antes de cargar las opciones
  init = function()
    -- Verde brillante para checkboxes completados
    vim.api.nvim_set_hl(0, "RenderMarkdownChecked", { fg = "#a6e3a1", bold = true })
    -- Rojo/Gris para checkboxes incompletos
    vim.api.nvim_set_hl(0, "RenderMarkdownUnchecked", { fg = "#f38ba8" })
    -- Fondo sutil para bloques de código
    vim.api.nvim_set_hl(0, "RenderMarkdownCode", { bg = "#1e1e2e" })
  end,

  opts = {
    -- 1. Encabezados (H1-H6)
    heading = {
      width = "block",
      left_pad = 2,
      right_pad = 4,
    },

    -- 2. Checkboxes
    checkbox = {
      enabled = true,
      unchecked = {
        icon = "󰄱 ",
        highlight = "RenderMarkdownUnchecked",
      },
      checked = {
        icon = " ",
        highlight = "RenderMarkdownChecked",
      },
      custom = {
        in_progress = { raw = "[/]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo" },
        important = { raw = "[!]", rendered = " ", highlight = "DiagnosticWarn" },
      },
    },

    -- 3. Viñetas de listas
    bullet = {
      enabled = true,
      icons = { "●", "○", "◆", "◇" },
    },

    -- 4. Bloques de código
    code = {
      language_border = " ",
    },

    -- 5. Citas (Quotes)
    quote = {
      enabled = true,
      icon = "▋ ",
    },

    -- 6. Tablas
    pipe_table = {
      enabled = true,
      style = "full",
      cell = "padded",
    },
    --render_modes = { 'n', 'c', 't' },
    render_modes = true,
  },
}
