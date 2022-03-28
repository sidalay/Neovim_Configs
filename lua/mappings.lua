local keymap = vim.api.nvim_set_keymap
local options = {noremap=true, silent=true}

local function escape(str)
	return vim.api.nvim_replace_termcodes(str, true, true ,true)
end

vim.g.mapleader = escape("<Space>")

-- switch between divided windows
	-- h-j-k-l
keymap('n', "<C-h>", "<C-w>h", {noremap = true})
keymap('n', "<C-j>", "<C-w>j", {noremap = true})
keymap('n', "<C-k>", "<C-w>k", {noremap = true})
keymap('n', "<C-l>", "<C-w>l", {noremap = true})

	-- arrow keys
keymap('n', "<C-Left>", "<C-w>h", {noremap = true})
keymap('n', "<C-Down>", "<C-w>j", {noremap = true})
keymap('n', "<C-Up>", "<C-w>k", {noremap = true})
keymap('n', "<C-Right>", "<C-w>l", {noremap = true})

-- delete or switch between buffers
keymap('n', "<M-.>", ":bnext<CR>", options)
keymap('n', "<M-,>", ":bprevious<CR>", options)
keymap('n', "<M-/>", ":bd<CR>", options)

