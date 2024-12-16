-- lua/mytheme/groups/editor.lua
local M = {}

function M.get(c)
	-- c is our colors module
	return {
		-- Editor UI
		Normal = { fg = c.fg.main, bg = c.bg.main },
		NormalFloat = { fg = c.fg.main, bg = c.ui.float },
		ColorColumn = { bg = c.bg.light },
		Cursor = { fg = c.bg.main, bg = c.fg.main },
		CursorLine = { bg = c.bg.light },
		CursorLineNr = { fg = c.syntax.constant, bold = true },
		LineNr = { fg = c.fg.dark },

		-- Borders and Splits
		VertSplit = { fg = c.bg.lighter },
		WinSeparator = { fg = c.bg.lighter },

		-- Folding
		Folded = { fg = c.ui.comment, bg = c.bg.light },
		FoldColumn = { fg = c.ui.comment },

		-- Search and Selection
		Search = { fg = c.fg.main, bg = c.ui.selection },
		IncSearch = { fg = c.bg.main, bg = c.syntax.constant },
		Visual = { bg = c.ui.selection },
		VisualNOS = { bg = c.ui.selection },

		-- Popup Menus
		Pmenu = { fg = c.fg.main, bg = c.ui.float },
		PmenuSel = { fg = c.fg.main, bg = c.ui.selection },
		PmenuSbar = { bg = c.bg.lighter },
		PmenuThumb = { bg = c.fg.dark },

		-- Messages and Signs
		ErrorMsg = { fg = c.diag.error },
		WarningMsg = { fg = c.diag.warning },
		Question = { fg = c.syntax.keyword },
		SignColumn = { bg = c.bg.main },

		-- Status Line
		StatusLine = { fg = c.fg.light, bg = c.bg.light },
		StatusLineNC = { fg = c.fg.dark, bg = c.bg.light },

		-- Wild Menu and Tab Line
		WildMenu = { link = "PmenuSel" },
		TabLine = { fg = c.fg.dark, bg = c.bg.light },
		TabLineFill = { bg = c.bg.main },
		TabLineSel = { fg = c.syntax.constant, bg = c.bg.main },

		-- Non-text Characters
		NonText = { fg = c.fg.dark },
		SpecialKey = { fg = c.fg.dark },
		Whitespace = { fg = c.bg.lighter },
	}
end

return M
