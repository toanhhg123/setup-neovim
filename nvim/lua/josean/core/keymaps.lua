-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General keymaps
---------------------

-- use jk to exit insert mode
--
--
-- -- clear search highlights
keymap.set("n", "<leader>nh", ":nohlsearch<CR>") -- list available help tags
local modes = { "n", "v", "i" }

for _, mode in ipairs(modes) do
	keymap.set(mode, "<Left>", [[<Cmd>lua print("Lỗi: Phím mũi tên trái  bị khoá")<CR>]])
	keymap.set(mode, "<Right>", [[<Cmd>lua print("Lỗi: Phím mũi tên phải đã bị khoá")<CR>]])
	keymap.set(mode, "<Up>", [[<Cmd>lua print("Lỗi: Phím mũi tên lên đã bị khoá")<CR>]])
	keymap.set(mode, "<Down>", [[<Cmd>lua print("Lỗi: Phím mũi tên xuống đã bị khoá")<CR>]])
	-- delete single character without copying into register
end
--move cursor to last row
keymap.set("n", "E", "$")
keymap.set("v", "E", "$")

keymap.set("n", "x", '"_x')

--delete goback word
keymap.set("n", "dw", 'vb"_d')

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin keybinds
----------------------
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximizatiom

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

--toggleterm
keymap.set("n", "<leader>nn", ":ToggleTerm<CR>") -- list available help tags

-- tab

keymap.set("n", "t1", "<Cmd>BufferGoto 1<CR>", {})
keymap.set("n", "t2", "<Cmd>BufferGoto 2<CR>", {})
keymap.set("n", "t3", "<Cmd>BufferGoto 3<CR>", {})

-- trouble
keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })

for _, mode in ipairs({ "v", "n" }) do
	keymap.set(mode, "<leader>j", "10j", { silent = true, noremap = true })
	keymap.set(mode, "<leader>k", "10k", { silent = true, noremap = true })
	keymap.set(mode, "<leader>l", "10l", { silent = true, noremap = true })
	keymap.set(mode, "<leader>h", "10h", { silent = true, noremap = true })
	-- delete single character without copying into register
end
