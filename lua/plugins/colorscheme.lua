return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,

  config = function()
    vim.o.background = "dark" -- or "light" for light mode
    vim.cmd([[colorscheme gruvbox]])
    vim.api.nvim_set_hl(0, "GruvboxRed", { fg = "#976391" })
    vim.api.nvim_set_hl(0, "GruvBoxYellow", { fg = "#98CE00" })
    vim.api.nvim_set_hl(0, "GruvBoxBlue", { fg = "#BBD1EA", bold = true })


    local cursor_fg = "#000000"
    local cursor_bg = "#d3cdc3"

    vim.api.nvim_set_hl(0, "Cursor", {
      fg = cursor_fg,
      bg = cursor_bg,
    })

    -- background and border
    vim.api.nvim_set_hl(0, "CmpPmenu", { bg = "#394053", fg = "#F8F8F2" })
    vim.api.nvim_set_hl(0, "CmpPmenuSel", { bg = "#3E3D32", fg = "#F8F8F2", bold = true })
    vim.api.nvim_set_hl(0, "CmpBorder", { fg = "#5C5A4D" })

    -- disable color for floating window and make nice border color
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#5C5A4D" })

    -- scrollbar
    vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#3E3D32" })
    vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#F8F8F2" })

    local function set_transparent()
      vim.cmd [[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NormalNC guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
    highlight SignColumn guibg=NONE ctermbg=NONE
    highlight VertSplit guibg=NONE ctermbg=NONE
  ]]
    end

    set_transparent()


    -- CMP transparent
    vim.api.nvim_set_hl(0, "CmpPmenu", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "CmpPmenuSel", { bg = "NONE", bold = true })
    vim.api.nvim_set_hl(0, "CmpBorder", { bg = "NONE" })

    vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "NONE", bold = true })



    -- ============== C# configuration ==============

    -- Extension methods
    vim.api.nvim_set_hl(0, "@lsp.type.extensionMethod.cs", {
      fg = "#EB9FEF",
      bold = true,
    })
    -- Records
    vim.api.nvim_set_hl(0, "@lsp.type.recordClass.cs", {
      fg = "#1B998B",
    })
    -- Records
    vim.api.nvim_set_hl(0, "@lsp.type.interface.cs", {
      fg = "#60992D",
    })

    -- Variables
    vim.api.nvim_set_hl(0, "@lsp.type.variable.cs", {
      fg = "#F7996E",
    })
    -- Control words
    vim.api.nvim_set_hl(0, "@lsp.type.controlKeyword.cs", {
      fg = "#E56399",
      bold = true,
    })
    -- Methods
    vim.api.nvim_set_hl(0, "@lsp.type.method.cs", {
      fg = "#7F96FF",
      bold = true,
    })
    -- Private readonly fields
    vim.api.nvim_set_hl(0, "@lsp.type.field.cs", {
      fg = "#DDC4DD",
      italic = true
    })

    -- Punctuation
    vim.api.nvim_set_hl(0, "@lsp.type.punctuation.cs", {
      fg = "#DAE3E5",
      bold = true,
    })

    -- ============== React configuration ==============

    -- Local variables
    vim.api.nvim_set_hl(0, "@lsp.typemod.variable.local.typescriptreact", {
      fg = "#7FC7FF",
    })

    -- Constants
    vim.api.nvim_set_hl(0, "@lsp.typemod.variable.readonly.typescriptreact", {
      fg = "#F78C6C",
      bold = true,
    })


    -- ============== C++ configuration ==============
    vim.api.nvim_set_hl(0, "@lsp.type.class.cpp", {
      fg = "#98CE00",
    })
    vim.api.nvim_set_hl(0, "@lsp.type.variable.cpp", {
      fg = "#FFCB67",
    })
    vim.api.nvim_set_hl(0, "cppType", {
      fg = "#F78C6C",
      bold = true,
    })
    vim.api.nvim_set_hl(0, "cType", {
      fg = "#F78C6C",
      bold = true,
    })

    vim.api.nvim_set_hl(0, "Structure", {
      fg = "#15B097",
      bold = true,
    })
    vim.api.nvim_set_hl(0, "cStructure", {
      fg = "#15B097",
      bold = true,
    })
    vim.api.nvim_set_hl(0, "@lsp.type.function.cpp", {
      fg = "#507DBC",
      bold = true,
    })
  end,
}
