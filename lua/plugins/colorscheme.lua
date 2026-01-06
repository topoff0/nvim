return {
  "loctvl842/monokai-pro.nvim",
  config = function()
    require("monokai-pro").setup({
      transparent_background = false,
      terminal_colors = true,
      devicons = true, -- highlight the icons of `nvim-web-devicons`
      styles = {
        comment = { italic = true },
        keyword = { italic = true },       -- any other keyword
        type = { italic = true },          -- (preferred) int, long, char, etc
        storageclass = { italic = true },  -- static, register, volatile, etc
        structure = { italic = true },     -- struct, union, enum, etc
        parameter = { italic = true },     -- parameter pass in function
        annotation = { italic = true },
        tag_attribute = { italic = true }, -- attribute of tag in reactjs
      },
      filter = "ristretto",                -- classic | octagon | pro | machine | ristretto | spectrum
      inc_search = "background",           -- underline | background
      background_clear = {
        -- "float_win",
        "toggleterm",
        "telescope",
        "renamer",
        "notify",
        "neo-tree",
      },
      plugins = {
        bufferline = {
          underline_selected = false,
          underline_visible = false,
        },
        indent_blankline = {
          context_highlight = "pro", -- default | pro
          context_start_underline = false,
        },
      },
    })
    vim.cmd.colorscheme("monokai-pro")

    local directory_color = "#9FFFF5"
    local modified_color = "#7CFFC4"
    local file_color = "#EDF4ED"

    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", {
      fg = directory_color,
      bold = true,
    })

    vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", {
      fg = directory_color,
    })

    vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", {
      fg = file_color,
      bold = true,
    })

    vim.api.nvim_set_hl(0, "NeoTreeFileName", {
      fg = file_color,
    })

    vim.api.nvim_set_hl(0, "NeoTreeGitModified", {
      fg = modified_color, -- text
      bg = nil,            -- empty background
      bold = true,         -- style
    })
    vim.api.nvim_set_hl(0, "NeoTreeGitConflict", {
      fg = "#FFA69E", -- text
      bg = nil,       -- empty background
      bold = true,    -- style
    })
    vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", {
      fg = "#EF7B45", -- text
      bg = nil,       -- empty background
      bold = true,    -- style
    })
    vim.api.nvim_set_hl(0, "NeoTreeGitAdded", {
      fg = "#0B6E4F", -- text
      bg = nil,       -- empty background
      bold = true,    -- style
    })

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
