local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	implement = {
		enable = false,
	},
	scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
	ui = {
		colors = {
			normal_bg = "#002b36",
		},
	},
})
