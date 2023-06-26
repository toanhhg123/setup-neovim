local c = require("vscode.colors").get_colors()

require("vscode").setup({
	transparent = true,
	italic_comments = true,
	disable_nvimtree_bg = true,
	color_overrides = {},
	group_overrides = {
		Cursor = { fg = c.vsNone, bg = c.vsNone, bold = true },
		CursorLine = { bg = c.vsNone },
	},
})

require("vscode").load()
