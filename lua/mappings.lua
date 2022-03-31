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
keymap('n', "<M-Left>", "<C-w>R", options)
keymap('n', "<M-Right>", "<C-w>r", options)

-- open a new window 
keymap('n', "<C-N>", ":Alpha<CR>", options) 		        -- opens new tab and calls Alpha
keymap('n', "<C-A>", ":vsplit | :Alpha<CR>", options) 		-- opens new vertical window and calls Alpha

-- delete or switch between buffers
keymap('n', "<M-.>", ":bnext<CR>", options)
keymap('n', "<M-,>", ":bprevious<CR>", options)
keymap('n', "<M-/>", ":bd<CR>", options)

-- folding keymapping 
keymap('n', "f[", "zM", options)
keymap('n', "f]", "zR", options)
keymap('n', "fi", "zc", options)
keymap('n', "fo", "zo", options)
keymap('n', "fp", "zx | zR", options)       -- enables folding to prevent error E490. use this before doing any folding.

-- rebind escape 
keymap('i', "jk", "<Esc>", options)         -- insert mode
keymap('c', "jk", "<Esc>", options)         -- insert mode
keymap('t', "jk", "<C-\\><C-n>", options)   -- terminal mode

-- toggles
keymap('n', "mm", ":set rnu!<CR>", options) -- absolute / relative numbers
keymap('n', "mc", ":ColorizerToggle<CR>", options) -- toggle colorizer

-- misc
keymap('n', "mh", ":HopWord<CR>", options)   -- Hop 
keymap('n', "ma", ":Alpha<CR>", options)     -- Alpha 

-- lsp key mappings 
keymap('n', "gd", ":lua vim.lsp.buf.definition()<CR>", options)
keymap('n', "gD", ":lua vim.lsp.buf.declaration()<CR>", options)
keymap('n', "gr", ":lua vim.lsp.buf.references()<CR>", options)
keymap('n', "gi", ":lua vim.lsp.buf.implementation()<CR>", options)
keymap('n', "gk", ":lua vim.lsp.buf.hover()<CR>", options)
keymap('n', "<leader>k", ":lua vim.lsp.buf.signature_help()<CR>", options)
keymap('n', "gn", ":lua vim.diagnostic.goto_prev()<CR>", options)
keymap('n', "gp", ":lua vim.diagnostic.goto_next()<CR>", options)
keymap('n', "<leader>qf", ":lua vim.lsp.buf.code_action()<CR>", options)
keymap('n', "<leader>e", ":lua vim.diagnostic.open_float()<CR>", options)
keymap('n', "<leader>i", ":lua require('lsp_extensions').inlay_hints{ prefix = '=> ', highlight = 'Comment', enabled = {'TypeHint', 'ChainingHint'}}<CR>", options)
