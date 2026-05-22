return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,

  config = function()
    vim.o.background = "dark"

    require("gruvbox").setup({
      terminal_colors = true,
      undercurl = true,
      underline = true,
      bold = false,
      italic = {
        strings = false,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = false,
      contrast = "soft",
      palette_overrides = {
        dark0 = "#1d2021",
        dark1 = "#282828",
        dark2 = "#32302f",
        dark3 = "#3c3836",
        dark4 = "#504945",
        light0 = "#ebdbb2",
        light1 = "#d5c4a1",
        light2 = "#bdae93",
        bright_red = "#d3869b",
        bright_green = "#b8bb26",
        bright_yellow = "#fabd2f",
        bright_blue = "#83a598",
        bright_purple = "#b16286",
        bright_aqua = "#8ec07c",
        bright_orange = "#d65d0e",
        neutral_red = "#cc6c75",
        neutral_green = "#98971a",
        neutral_yellow = "#d79921",
        neutral_blue = "#7daea3",
        neutral_purple = "#a89984",
        neutral_aqua = "#689d6a",
        neutral_orange = "#c47f42",
      },
      overrides = {
        Normal = { bg = "NONE" },
        NormalNC = { bg = "NONE" },
        EndOfBuffer = { bg = "NONE" },
        SignColumn = { bg = "NONE" },
        NormalFloat = { bg = "NONE" },
        FloatBorder = { bg = "NONE" },
        CursorLine = { bg = "NONE" },
      },
    })

    vim.cmd.colorscheme("gruvbox")

    local c = {
      fg = "#d5c4a1",
      muted = "#928374",
      faint = "#665c54",
      panel = "#32302f",
      select = "#3c3836",
      red = "#cc6c75",
      orange = "#c47f42",
      yellow = "#d8a657",
      green = "#a9b665",
      aqua = "#89b482",
      blue = "#7daea3",
      purple = "#d3869b",
    }

    local function hl(group, opts)
      vim.api.nvim_set_hl(0, group, opts)
    end

    hl("Cursor", { fg = "#1d2021", bg = c.yellow })
    hl("CursorLine", { bg = "NONE" })
    hl("CursorLineNr", { fg = c.yellow, bold = true })
    hl("LineNr", { fg = c.faint })
    hl("Visual", { bg = c.select })
    hl("Search", { fg = "#1d2021", bg = c.yellow })
    hl("IncSearch", { fg = "#1d2021", bg = c.orange })
    hl("NormalFloat", { bg = "NONE" })
    hl("FloatBorder", { fg = c.faint, bg = "NONE" })
    hl("WinSeparator", { fg = c.faint, bg = "NONE" })

    hl("Pmenu", { fg = c.fg, bg = "NONE" })
    hl("PmenuSel", { fg = c.fg, bg = c.panel, bold = true })
    hl("PmenuSbar", { bg = "NONE" })
    hl("PmenuThumb", { bg = c.faint })
    hl("CmpPmenu", { fg = c.fg, bg = "NONE" })
    hl("CmpPmenuSel", { fg = c.fg, bg = c.panel, bold = true })
    hl("CmpBorder", { fg = c.faint, bg = "NONE" })

    hl("DiagnosticError", { fg = c.red })
    hl("DiagnosticWarn", { fg = c.yellow })
    hl("DiagnosticInfo", { fg = c.blue })
    hl("DiagnosticHint", { fg = c.aqua })
    hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
    hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow })
    hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.blue })
    hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.aqua })

    hl("@keyword", { fg = c.purple })
    hl("@keyword.conditional", { fg = c.purple })
    hl("@keyword.repeat", { fg = c.purple })
    hl("@keyword.return", { fg = c.purple })
    hl("@keyword.import", { fg = c.blue })
    hl("@keyword.exception", { fg = c.red })
    hl("@operator", { fg = c.muted })
    hl("@punctuation.bracket", { fg = c.muted })
    hl("@punctuation.delimiter", { fg = c.muted })
    hl("@punctuation.special", { fg = c.orange })
    hl("@comment", { fg = c.muted, italic = true })
    hl("@string", { fg = c.green })
    hl("@string.special", { fg = c.aqua })
    hl("@number", { fg = c.orange })
    hl("@boolean", { fg = c.orange })
    hl("@constant", { fg = c.orange })
    hl("@constant.builtin", { fg = c.orange })
    hl("@variable", { fg = c.fg })
    hl("@variable.parameter", { fg = c.fg, italic = true })
    hl("@property", { fg = c.aqua })
    hl("@field", { fg = c.aqua })
    hl("@function", { fg = c.blue })
    hl("@function.call", { fg = c.blue })
    hl("@function.method", { fg = c.blue })
    hl("@function.method.call", { fg = c.blue })
    hl("@constructor", { fg = c.yellow })
    hl("@type", { fg = c.yellow })
    hl("@type.builtin", { fg = c.yellow, italic = true })
    hl("@module", { fg = c.green })
    hl("@namespace", { fg = c.green })
    hl("@tag", { fg = c.blue })
    hl("@tag.attribute", { fg = c.aqua })
    hl("@tag.delimiter", { fg = c.muted })

    hl("@type.c", { fg = c.yellow })
    hl("@type.cpp", { fg = c.yellow })
    hl("@type.cs", { fg = c.yellow })
    hl("@type.haskell", { fg = c.yellow })
    hl("@type.typescript", { fg = c.yellow })
    hl("@type.javascript", { fg = c.yellow })
    hl("@constructor.cpp", { fg = c.yellow })
    hl("@constructor.cs", { fg = c.yellow })
    hl("@constructor.haskell", { fg = c.green })
    hl("@keyword.import.haskell", { fg = c.blue })
    hl("@module.haskell", { fg = c.green })

    hl("@tag.html", { fg = c.blue })
    hl("@tag.attribute.html", { fg = c.aqua })
    hl("@tag.delimiter.html", { fg = c.muted })
    hl("@property.css", { fg = c.aqua })
    hl("@type.css", { fg = c.yellow })
    hl("@string.special.url.css", { fg = c.green })

    local semantic = {
      cs = true,
      c = true,
      cpp = true,
      haskell = true,
      typescript = true,
      typescriptreact = true,
      javascript = true,
      javascriptreact = true,
    }

    for lang in pairs(semantic) do
      hl("@lsp.type.class." .. lang, { fg = c.yellow })
      hl("@lsp.type.struct." .. lang, { fg = c.green })
      hl("@lsp.type.recordClass." .. lang, { fg = c.green })
      hl("@lsp.type.interface." .. lang, { fg = c.aqua })
      hl("@lsp.type.enum." .. lang, { fg = c.yellow })
      hl("@lsp.type.type." .. lang, { fg = c.yellow })
      hl("@lsp.type.function." .. lang, { fg = c.blue })
      hl("@lsp.type.method." .. lang, { fg = c.blue })
      hl("@lsp.type.extensionMethod." .. lang, { fg = c.purple })
      hl("@lsp.type.property." .. lang, { fg = c.aqua })
      hl("@lsp.type.field." .. lang, { fg = c.aqua })
      hl("@lsp.type.parameter." .. lang, { fg = c.fg, italic = true })
      hl("@lsp.type.namespace." .. lang, { fg = c.green })
      hl("@lsp.type.variable." .. lang, { fg = c.fg })
      hl("@lsp.typemod.variable.readonly." .. lang, { fg = c.orange })
      hl("@lsp.typemod.property.readonly." .. lang, { fg = c.orange })
    end

    hl("@lsp.type.enumMember.cs", { fg = c.orange })
    hl("@lsp.type.enumMember.cpp", { fg = c.orange })
    hl("@lsp.type.enumMember.c", { fg = c.orange })
    hl("@lsp.type.decorator.typescript", { fg = c.purple })
    hl("@lsp.type.decorator.typescriptreact", { fg = c.purple })
    hl("@lsp.type.decorator.javascript", { fg = c.purple })
    hl("@lsp.type.decorator.javascriptreact", { fg = c.purple })
  end,
}
