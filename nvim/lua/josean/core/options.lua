local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append("-") -- consider string-string as whole word

--##########################################
-- vim.scriptencoding = "utf-8"
-- vim.opt.encoding = "utf-8"
-- vim.opt.fileencoding = "utf-8"
-- vim.wo.number = true
-- vim.opt.title = true
-- vim.opt.autoindent = true
-- vim.opt.smartindent = true
-- vim.opt.hlsearch = true
-- vim.opt.backup = false
-- vim.opt.showcmd = true
-- vim.opt.cmdheight = 1
-- vim.opt.laststatus = 2
-- vim.opt.expandtab = true
-- vim.opt.scrolloff = 10
-- vim.opt.shell = "fish"
-- vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
-- vim.opt.inccommand = "split"
-- vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
-- vim.opt.smarttab = true
-- vim.opt.breakindent = true
-- vim.opt.shiftwidth = 2
-- vim.opt.tabstop = 2
-- vim.opt.wrap = false -- No Wrap lines
-- vim.opt.backspace = { "start", "eol", "indent" }
-- vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
-- vim.opt.wildignore:append({ "*/node_modules/*" })
--
-- -- Undercurl
-- vim.cmd([[let &t_Cs = "\e[4:3m"]])
-- vim.cmd([[let &t_Ce = "\e[4:0m"]])
--
-- -- Turn off paste mode when leaving insert
-- vim.api.nvim_create_autocmd("InsertLeave", {
-- 	pattern = "*",
-- 	command = "set nopaste",
-- })
--
-- -- Add asterisks in block comments
-- vim.opt.formatoptions:append({ "r" })
