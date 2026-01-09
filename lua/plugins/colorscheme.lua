return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function()
    require("catppuccin").setup({
      flavour = "mocha",         -- latte, frappe, macchiato, mocha

      no_italic = false,         -- Force no italic
      no_bold = false,           -- Force no bold
      no_underline = false,      -- Force no underline
      styles = {
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "standout" },
        loops = { "italic", "underdashed" },
        functions = { "bold" },
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = { "italic" },
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
    })

    vim.cmd.colorscheme "catppuccin"

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
  end,
}
