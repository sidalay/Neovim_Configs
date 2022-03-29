local keymap = vim.api.nvim_set_keymap
local options = {noremap=true, silent=true}

local function escape(str)
	return vim.api.nvim_replace_termcodes(str, true, true ,true)
end

vim.g.mapleader = escape("<Space>")

-- switch cursors between divided windows
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

-- move windows left or right
keymap('n', "<M-Left>", "<C-w>R", {noremap = true})
keymap('n', "<M-Right>", "<C-w>r", {noremap = true})

-- open a new window 
keymap('n', "<C-N>", ":tabnew | :Alpha<CR>", options) 		-- opens new window and scratch buffer
keymap('n', "<C-A>", ":vnew | :Alpha<CR>", options) 		-- opens new window and calls Alpha

-- delete or switch between buffers
keymap('n', "<M-.>", ":bnext<CR>", options)
keymap('n', "<M-,>", ":bprevious<CR>", options)
keymap('n', "<M-/>", ":bd<CR>", options)

-- folding keymapping 
keymap('n', "<C-[>", "zM", options)
keymap('n', "<C-]>", "zR", options)
keymap('n', "<M-[>", "zc", options)
keymap('n', "<M-]>", "zo", options)
keymap('n', "<C-\\>", "zx | zR", options)
