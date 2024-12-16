-- lua/mytheme/init.lua
local M = {}

function M.load()
	-- Clear highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "mytheme"

	-- Kanagawa colors
	local colors = {
		-- Base colors
		bg = "#1F1F28",
		bg_dark = "#16161D",
		bg_light = "#2A2A37",
		fg = "#DCD7BA",
		fg_dark = "#727169",
		fg_light = "#C8C093",

		-- Syntax
		comment = "#938AA9",
		blue = "#7E9CD8",
		violet = "#957FB8",
		green = "#98BB6C",
		yellow = "#E6C384",
		orange = "#FFA066",
		red = "#E82424",
		pink = "#D27E99",
		aqua = "#7AA89F",
	}

	-- Define highlight groups
	local highlights = {
		-- Editor UI
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bg_dark },
		SignColumn = { bg = colors.bg },
		ColorColumn = { bg = colors.bg_light },
		Cursor = { fg = colors.bg, bg = colors.fg },
		CursorLine = { bg = colors.bg_light },
		CursorLineNr = { fg = colors.yellow, bold = true },
		LineNr = { fg = colors.fg_dark },

		-- Syntax highlighting
		Comment = { fg = colors.comment, italic = true },
		String = { fg = colors.green },
		Number = { fg = colors.yellow },
		Identifier = { fg = colors.fg_light },
		Function = { fg = colors.blue },
		Statement = { fg = colors.violet },
		Keyword = { fg = colors.violet },
		Constant = { fg = colors.orange },
		Type = { fg = colors.aqua },
		Special = { fg = colors.pink },

		-- Status and Tab Line
		StatusLine = { fg = colors.fg, bg = colors.bg_dark },
		StatusLineNC = { fg = colors.fg_dark, bg = colors.bg_dark },
		TabLine = { fg = colors.fg_dark, bg = colors.bg_light },
		TabLineFill = { bg = colors.bg },
		TabLineSel = { fg = colors.yellow, bg = colors.bg },

		-- Search and Selection
		Search = { fg = colors.bg, bg = colors.yellow },
		IncSearch = { fg = colors.bg, bg = colors.orange },
		Visual = { bg = colors.bg_light },

		-- Diagnostics
		DiagnosticError = { fg = colors.red },
		DiagnosticWarn = { fg = colors.yellow },
		DiagnosticInfo = { fg = colors.blue },
		DiagnosticHint = { fg = colors.aqua },
	}

	-- Apply all highlights
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

-- Keep the setup function for compatibility
function M.setup()
	M.load()
end

return M
