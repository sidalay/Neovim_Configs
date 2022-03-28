vim.cmd([[colorscheme gruvbox]])

vim.opt.background = "dark"
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.hidden = true
vim.opt.autochdir = true
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.linebreak = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
--vim.opt.splitright = true
--vim.opt.splitbelow = false

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

vim.opt.clipboard = "unnamedplus"
