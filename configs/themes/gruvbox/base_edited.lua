local colors = require("gruvbox.colors")
local styles = require("gruvbox.settings").styles
local utils = require("gruvbox.utils")

-- options (dark mode by default)
local bg0 = colors.dark0 -- main editor background 
local bg1 = colors.dark1 -- gutter & title background 
local bg2 = colors.dark2 -- fold line colors 
local bg3 = colors.dark3 -- closing bracket/parenthesis highlight color
local bg4 = colors.dark4 -- line numbers

local fg0 = colors.light0
local fg1 = colors.light1 -- main text foreground color
local fg2 = colors.light2
local fg3 = colors.light3
local fg4 = colors.light4

local red =     colors.bright_red
local green =   colors.bright_green
local yellow =  colors.bright_yellow
local blue =    colors.bright_blue
local purple =  colors.bright_purple
local aqua =    colors.bright_aqua
local orange =  colors.bright_orange
local gray =    colors.gray

------------------------------------------
        -- asura theme colors --
local aDark  =  colors.asura_dark
local aWhite =  colors.asura_white
local aRed   =  colors.asura_red
local aGreen =  colors.asura_green
local aYellow = colors.asura_yellow
local aBlue  =  colors.asura_blue
local aLavender = colors.asura_lavender
local aPurple = colors.asura_purple
local aPink  =  colors.asura_pink
local aAqua  =  colors.asura_aqua
local aOrange = colors.asura_orange
------------------------------------------


local bg = vim.o.background
if bg == nil then
  bg = "dark"
  vim.o.background = bg
end

-- swap colors if light mode
if bg == "light" then
  bg0 = colors.light0
  bg1 = colors.light1
  bg2 = colors.light2
  bg3 = colors.light3
  bg4 = colors.light4
  fg0 = colors.dark0
  fg1 = colors.dark1
  fg2 = colors.dark2
  fg3 = colors.dark3
  fg4 = colors.dark4
  red = colors.faded_red
  green  =  colors.faded_green
  yellow =  colors.faded_yellow
  blue   =  colors.faded_blue
  purple =  colors.faded_purple
  aqua   =  colors.faded_aqua
  orange =  colors.faded_orange
end

-- handle light/dark contrast settings
local contrast = vim.g["gruvbox_contrast_" .. bg]
if contrast == "hard" then
  bg0 = colors[bg .. "0_hard"]
elseif contrast == "soft" then
  bg0 = colors[bg .. "0_soft"]
end

-- extending colors table with basic names for easy customization in g:gruvbox_* options
colors.bg0 = bg0
colors.bg1 = bg1
colors.bg2 = bg2
colors.bg3 = bg3
colors.bg4 = bg4
colors.fg0 = fg0
colors.fg1 = fg1
colors.fg2 = fg2
colors.fg3 = fg3
colors.fg4 = fg4
colors.red = red
colors.green =  green
colors.yellow = yellow
colors.blue =   blue
colors.purple = purple
colors.aqua =   aqua
colors.orange = orange

local hls_cursor =      utils.get_color_from_var(vim.g.gruvbox_hls_cursor, orange, colors)
local hls_highlight =   utils.get_color_from_var(vim.g.gruvbox_hls_highlight, yellow, colors)
local number_column =   utils.get_color_from_var(vim.g.gruvbox_number_column, nil, colors)
local color_column =    utils.get_color_from_var(vim.g.gruvbox_color_column, bg1, colors)
local vert_split =      utils.get_color_from_var(vim.g.gruvbox_vert_split, bg0, colors)
local tabline_sel =     utils.get_color_from_var(vim.g.gruvbox_tabline_sel, green, colors)
local sign_column =     utils.get_color_from_var(vim.g.gruvbox_sign_column, bg1, colors)
local cursor_line =     utils.get_color_from_var(vim.g.gruvbox_cursor_line, bg1, colors)

local improved_strings_fg  = aGreen
local improved_strings_bg  = bg1
local improved_strings_gui = styles.italic_strings

local special_string_fg  = aBlue
local special_string_bg  = bg1
local special_string_gui = styles.italic_strings

if not utils.tobool(vim.g.gruvbox_improved_strings) then
  improved_strings_fg = aGreen                          -- strings
  improved_strings_bg = nil
  special_string_bg   = nil
  special_string_gui  = nil
end

-- neovim terminal mode colors
vim.g.terminal_color_0  = bg0
vim.g.terminal_color_8  = gray
vim.g.terminal_color_1  = aRed
vim.g.terminal_color_9  = aRed
vim.g.terminal_color_2  = aPurple                   -- prompt username 
vim.g.terminal_color_10 = aPurple                   -- prompt username 
vim.g.terminal_color_3  = aYellow
vim.g.terminal_color_11 = aOrange
vim.g.terminal_color_4  = aBlue                     -- path 
vim.g.terminal_color_12 = aBlue                     -- path 
vim.g.terminal_color_5  = aPurple
vim.g.terminal_color_13 = aPurple
vim.g.terminal_color_6  = aAqua
vim.g.terminal_color_14 = aAqua
vim.g.terminal_color_7  = aWhite
vim.g.terminal_color_15 = aWhite

vim.g.colors_name = "gruvbox"

local table_concat = table.concat

local base_group = {
  -- Base groups
  GruvboxFg0 = { fg = fg0 },
  GruvboxFg1 = { fg = fg1 },
  GruvboxFg2 = { fg = fg2 },
  GruvboxFg3 = { fg = fg3 },
  GruvboxFg4 = { fg = fg4 },
  GruvboxGray = { fg = gray },
  GruvboxBg0 = { fg = bg0 },
  GruvboxBg1 = { fg = bg1 },
  GruvboxBg2 = { fg = bg2 },
  GruvboxBg3 = { fg = bg3 },
  GruvboxBg4 = { fg = bg4 },

  GruvboxRed        = { fg = red },
  GruvboxRedBold    = { fg = red, gui = styles.bold },
  GruvboxGreen      = { fg = green },
  GruvboxGreenBold  = { fg = green, gui = styles.bold },
  GruvboxYellow     = { fg = yellow },
  GruvboxYellowBold = { fg = yellow, gui = styles.bold },
  GruvboxBlue       = { fg = blue },
  GruvboxBlueBold   = { fg = blue, gui = styles.bold },
  GruvboxPurple     = { fg = purple },
  GruvboxPurpleBold = { fg = purple, gui = styles.bold },
  GruvboxAqua       = { fg = aqua },
  GruvboxAquaBold   = { fg = aqua, gui = styles.bold },
  GruvboxOrange     = { fg = orange },
  GruvboxOrangeBold = { fg = orange, gui = styles.bold },

  AsuraDark         = { fg = aDark },
  AsuraDarkBold     = { fg = aDark, gui = styles.bold },
  AsuraWhite        = { fg = aWhite },
  AsureWhiteBold    = { fg = aWhite, gui = styles.bold },
  AsuraRed          = { fg = aRed },
  AsuraRedBold      = { fg = aRed, gui = styles.bold },
  AsuraGreen        = { fg = aGreen },
  AsuraGreenBold    = { fg = aGreen, gui = styles.bold },
  AsuraYellow       = { fg = aYellow },
  AsuraYellowBold   = { fg = aYellow, gui = styles.bold },
  AsuraBlue         = { fg = aBlue },
  AsuraBlueBold     = { fg = aBlue, gui = styles.bold },
  AsuraLavender     = { fg = aLavender },
  AsuraLavenderBold = { fg = aLavender, gui = styles.bold },
  AsuraPurple       = { fg = aPurple },
  AsuraPurpleBold   = { fg = aPurple, gui = styles.bold },
  AsuraPink         = { fg = aPink },
  AsuraPinkBold     = { fg = aPink, gui = styles.bold },
  AsuraAqua         = { fg = aAqua },
  AsuraAquaBold     = { fg = aAqua, gui = styles.bold },
  AsuraOrange       = { fg = aOrange },
  AsuraOrangeBold   = { fg = aOrange, gui = styles.bold },

  AsuraBlueSign     = { fg = aBlue, bg = sign_column, gui = styles.invert_signs },
  AsuraPurpleSign   = { fg = aPurple, bg = sign_column, gui = styles.invert_signs },

  GruvboxRedSign    = { fg = red, bg = sign_column, gui = styles.invert_signs },
  GruvboxGreenSign  = { fg = green, bg = sign_column, gui = styles.invert_signs },
  GruvboxYellowSign = { fg = yellow, bg = sign_column, gui = styles.invert_signs },
  GruvboxBlueSign   = { fg = blue, bg = sign_column, gui = styles.invert_signs },
  GruvboxPurpleSign = { fg = purple, bg = sign_column, gui = styles.invert_signs },
  GruvboxAquaSign   = { fg = aqua, bg = sign_column, gui = styles.invert_signs },
  GruvboxOrangeSign = { fg = orange, bg = sign_column, gui = styles.invert_signs },

  GruvboxRedUnderline    = { gui = styles.undercurl, sp = red },
  GruvboxGreenUnderline  = { gui = styles.undercurl, sp = green },
  GruvboxYellowUnderline = { gui = styles.undercurl, sp = yellow },
  GruvboxBlueUnderline   = { gui = styles.undercurl, sp = blue },
  GruvboxPurpleUnderline = { gui = styles.undercurl, sp = purple },
  GruvboxAquaUnderline   = { gui = styles.undercurl, sp = aqua },
  GruvboxOrangeUnderline = { gui = styles.undercurl, sp = orange },

  ColorColumn   = { bg = color_column },
  Conceal       = { fg = blue },
  Cursor        = { gui = styles.inverse },
  lCursor       = "Cursor",
  iCursor       = "Cursor",
  vCursor       = "Cursor",
  CursorIM      = "Cursor",
  CursorLine    = { bg = bg0 },
  CursorColumn  = "CursorLine",
  Directory     = "AsuraAqua", -- NvimTree Folder Colors
  DiffAdd       = { fg = aAqua, bg = bg0, gui = styles.inverse },
  DiffChange    = { fg = aBlue, bg = bg0, gui = styles.inverse },
  DiffDelete    = { fg = aRed, bg = bg0, gui = styles.inverse },
  DiffText      = { fg = aPurple, bg = bg0, gui = styles.inverse },
  ErrorMsg      = { fg = aRed, bg = bg0, gui = styles.bold }, -- Command line error messages
  VertSplit     = { fg = bg2, bg = vert_split },
  Folded        = { fg = aOrange, bg = bg1, gui = styles.italic }, -- folded text color & style
  FoldColumn    = { fg = aOrange, bg = bg1 },                      -- ???
  SignColumn    = { bg = sign_column },
  IncSearch     = { fg = hls_cursor, bg = bg0, gui = styles.inverse },
  LineNr        = { fg = aWhite, bg = number_column },
  CursorLineNr  = { fg = aAqua, bg = bg1 },
  MatchParen    = { bg = aOrange, gui = styles.bold },
  ModeMsg       = "GruvboxYellowBold",
  MoreMsg       = "GruvboxYellowBold",
  NonText       = "GruvboxBg2",
  Normal        = { fg = fg1, bg = bg0 },
  Pmenu         = { fg = fg1, bg = bg2 },
  PmenuSel      = { fg = bg2, bg = aBlue, gui = styles.bold },
  PmenuSbar     = { bg = bg2 },
  PmenuThumb    = { bg = bg4 },
  Question      = "AsuraOrangeBold",
  QuickFixLine  = { bg = bg0, gui = styles.bold },
  Search        = { fg = hls_highlight, bg = bg0, gui = styles.inverse },
  SpecialKey    = "GruvboxFg4",
  SpellRare     = "GruvboxPurpleUnderline",
  SpellBad      = "GruvboxRedUnderline",
  SpellLocal    = "GruvboxAquaUnderline",
  SpellCap      = utils.tobool(vim.g.gruvbox_improved_warnings) and {
                    fg = aGreen,
                    gui = table_concat({ styles.bold, styles.italic }, ","),
                } or "GruvboxBlueUnderline",
  StatusLine    = { fg = bg2, bg = fg1, gui = styles.inverse },
  StatusLineNC  = { fg = bg1, bg = fg4, gui = styles.inverse },
  TabLineFill   = { fg = bg4, bg = bg1, gui = styles.invert_tabline },
  TabLine       = "TabLineFill",
  TabLineSel    = { fg = tabline_sel, bg = bg1, gui = styles.invert_tabline },
  Title         = "AsuraGreenBold",
  Visual        = { bg = bg3, gui = styles.invert_selection },
  VisualNOS     = "Visual",
  WarningMsg    = "AsuraRedBold",
  WildMenu      = { fg = aBlue, bg = bg2, gui = styles.bold },
  Constant      = "AsuraWhite",         -- constant variables 
  Special       = { fg = special_string_fg, bg = special_string_bg, gui = special_string_gui },
  String        = {
                    fg = improved_strings_fg,
                    bg = improved_strings_bg,
                    gui = improved_strings_gui,
                },
  Character     = "AsuraGreen",         -- chars
  Number        = "AsuraLavender",      -- integers
  Boolean       = "AsuraYellow",        -- boolean keyword 
  Float         = "AsuraLavender",      -- floats
  Identifier    = "AsuraWhite",         -- variables
  Function      = "AsuraBlue",          -- functions
  Statement     = "AsuraPurple",        -- ?? 
  Conditional   = "AsuraPurple",        -- if statements
  Repeat        = "AsuraPurple",        -- loops
  Label         = "GruvboxRed",         -- ?? 
  Exception     = "AsuraPurple",        -- try catch 
  Keyword       = "AsuraPink",          -- auto, const, struct, template, etc.
  Operator      = "GruvboxFg1",         -- ?? 
  PreProc       = "AsuraWhite",         -- square brackets 
  Include       = "AsuraAqua",          -- #include & namespaces
  Define        = "AsuraPurple",        -- ??  
  Macro         = "GruvboxAqua",        -- ?? 
  PreCondit     = "AsuraAqua",          -- ?? 
  Type          = "AsuraPurple",        -- Type defines
  StorageClass  = "AsuraPurple",        -- ?? 
  Structure     = "GruvboxRed",         -- ?? 
  Typedef       = "AsuraPink",          -- ?? 
  SpecialChar   = "GruvboxBlue",        -- ?? 
  Tag           = "GruvboxRedBold",     -- ?? 
  Delimiter     = "AsuraWhiteBold",     -- Closing brackets & Parenthesis
  Comment       = { fg = gray, gui = styles.italic_comments },
  Debug         = "AsuraRed",           -- ?? 
  Underlined    = { fg = aBlue, gui = styles.underline }, -- ?? 
  Bold          = { gui = styles.bold },
  Italic        = { gui = styles.italic },
  Ignore        = {},
  Error         = { fg = red, gui = table_concat({ styles.bold, styles.inverse }, ",") },
  Todo          = { fg = fg0, gui = table_concat({ styles.bold, styles.italic }, ",") },
  diffAdded     = "AsuraAqua",
  diffRemoved   = "AsuraRed",
  diffChanged   = "AsuraBlue",
  diffFile      = "AsuraOrange",
  diffNewFile   = "AsuraPurple",
  diffLine      = "AsuraYellow",
  -- signature
  SignatureMarkText      = "AsuraBlueSign",
  SignatureMarkerText    = "AsuraPurpleSign",
  -- gitcommit
  gitcommitSelectedFile  = "AsuraGreen",
  gitcommitDiscardedFile = "AsuraRed",
  -- checkhealth
  healthError   = { fg = bg0, bg = aRed },
  healthSuccess = { fg = bg0, bg = aGreen },
  healthWarning = { fg = bg0, bg = aYellow },
}

return base_group
