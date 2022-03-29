vim.cmd([[colorscheme gruvbox]])

local set = vim.opt

set.background = "dark"
set.termguicolors = true
set.number = true
set.tabstop = 4
set.shiftwidth = 4
set.showmode = false
set.hidden = true
set.autochdir = true
set.cmdheight = 1
set.ignorecase = true
set.breakindent = true
set.autoindent = true
set.relativenumber = true
set.cursorline = true
set.splitright = true
set.splitbelow = true
set.foldexpr = 'nvim_treesitter#foldexpr()'
set.foldmethod = 'expr'
set.mouse = "a"
set.showtabline = 2
set.smartcase = true
set.smartindent = true
set.timeoutlen = 100
set.showtabline = 2
set.expandtab = true
set.signcolumn = "yes"
set.wrap = false
set.scrolloff = 8
set.sidescrolloff = 8
set.updatetime = 300
set.textwidth = 100

vim.g.clipboard = {
    name = "win32yank",
    copy = {
        ['+'] = "win32yank.exe -i --crlf",
        ['*'] = "win32yank.exe -i --crlf",
    },
    paste = {
        ['+'] = "win32yank.exe -o --lf",
        ['*'] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
}

set.clipboard = "unnamedplus"
