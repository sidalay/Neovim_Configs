vim.cmd([[colorscheme gruvbox]])

local function escape(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

vim.g.mapleader = escape("<Space>")

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
set.guicursor = {'n-v-c:block','i-ci-ve:ver25','r-cr:hor20,o:hor50','a:blinkwait700-blinkoff400-blinkon250-Cursor','sm:block-blinkwait175-blinkoff150-blinkon175'}
set.splitright = true
set.splitbelow = true
set.fillchars = 'eob: '
--set.fillchars = 'fold: '
set.foldmethod = 'expr'
set.foldlevel = 99
set.foldexpr = 'nvim_treesitter#foldexpr()'
--vim.o.foldtext = \[\[substitute(getline(v:foldstart),'\\\\t',repeat('\\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)'\]\]
set.mouse = "a"
set.showtabline = 2
set.smartcase = true
set.smartindent = true
set.timeoutlen = 200
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
