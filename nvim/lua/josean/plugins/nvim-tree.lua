-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
	},
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	view = {
		hide_root_folder = false,
		cursorline = false,
		-- float = {
		-- 	enable = true,
		-- 	quit_on_focus_loss = true,
		-- 	open_win_config = {
		-- 		relative = "editor",
		-- 		border = "rounded",
		-- 		width = 50,
		-- 		height = 30,
		-- 		row = 1,
		-- 		col = 1,
		-- 	},
		-- },
	},
	-- 	git = {
	-- 		ignore = false,
	-- 	},
})
