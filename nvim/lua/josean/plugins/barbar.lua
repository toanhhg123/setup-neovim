vim.g.barbar_auto_setup = false -- disable auto-setup

require("barbar").setup({

	-- Enable/disable animations
	animation = true,

	icons = {
		-- Configure the base icons on the bufferline.
		-- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
		buffer_index = true,
		buffer_number = false,
		button = "",
		-- Enables / disables diagnostic symbols
		diagnostics = {
			[vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
			[vim.diagnostic.severity.WARN] = { enabled = false },
			[vim.diagnostic.severity.INFO] = { enabled = false },
			[vim.diagnostic.severity.HINT] = { enabled = true },
		},
		gitsigns = {
			added = { enabled = true, icon = "+" },
			changed = { enabled = true, icon = "~" },
			deleted = { enabled = true, icon = "-" },
		},
		filetype = {
			-- Sets the icon's highlight group.
			-- If false, will use nvim-web-devicons colors
			custom_colors = false,

			-- Requires `nvim-web-devicons` if `true`
			enabled = true,
		},
		separator = { left = "▎", right = "" },

		-- If true, add an additional separator at the end of the buffer list
		separator_at_end = true,

		-- Configure the icons on the bufferline when modified or pinned.
		-- Supports all the base icon options.
		modified = { button = "●" },
		pinned = { button = "", filename = true },

		-- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
		preset = "default",

		-- Configure the icons on the bufferline based on the visibility of a buffer.
		-- Supports all the base icon options, plus `modified` and `pinned`.
		alternate = { filetype = { enabled = false } },
		current = { buffer_index = true },
		inactive = { button = "×" },
		visible = { modified = { buffer_number = false } },
	},

	-- If true, new buffers will be inserted at the start/end of the list.
	-- Default is to insert after current buffer.
	insert_at_end = false,
	insert_at_start = false,

	-- Sets the maximum padding width with which to surround each tab
	maximum_padding = 1,

	-- Sets the minimum padding width with which to surround each tab
	minimum_padding = 1,

	-- Sets the maximum buffer name length.
	maximum_length = 30,

	-- Sets the minimum buffer name length.
	minimum_length = 0,

	-- If set, the letters for each buffer in buffer-pick mode will be
	-- assigned based on their name. Otherwise or in case all letters are
	-- already assigned, the behavior is to assign letters in order of
	-- usability (see order below)
	semantic_letters = true,

	-- Set the filetypes which barbar will offset itself for
	sidebar_filetypes = {
		-- Use the default values: {event = 'BufWinLeave', text = nil}
		NvimTree = true,
		-- Or, specify the text used for the offset:
		undotree = { text = "undotree" },
		-- Or, specify the event which the sidebar executes when leaving:
		["neo-tree"] = { event = "BufWipeout" },
		-- Or, specify both
		Outline = { event = "BufWinLeave", text = "symbols-outline" },
	},

	-- New buffer letters are assigned in this order. This order is
	-- optimal for the qwerty keyboard layout but might need adjustment
	-- for other layouts.
	letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",

	-- Sets the name of unnamed buffers. By default format is "[Buffer X]"
	-- where X is the buffer number. But only a static string is accepted here.
	no_name_title = nil,
})
