-- lua/mytheme/groups/plugins.lua
local M = {}

function M.get(c)
	return {
		-- Telescope
		TelescopeNormal = { fg = c.fujiWhite, bg = c.sumiInk0 },
		TelescopeBorder = { fg = c.sumiInk3, bg = c.sumiInk0 },
		TelescopePromptNormal = { fg = c.fujiWhite, bg = c.sumiInk0 },
		TelescopePromptBorder = { fg = c.sumiInk3, bg = c.sumiInk0 },
		TelescopePromptPrefix = { fg = c.crystalBlue, bg = c.sumiInk0 },
		TelescopeResultsNormal = { fg = c.fujiWhite, bg = c.sumiInk0 },
		TelescopeSelection = { fg = c.fujiWhite, bg = c.sumiInk2 },
		TelescopeSelectionCaret = { fg = c.carpYellow, bg = c.sumiInk2 },

		-- Neo-tree
		NeoTreeNormal = { fg = c.fujiWhite, bg = c.sumiInk0 },
		NeoTreeNormalNC = { fg = c.fujiWhite, bg = c.sumiInk0 },
		NeoTreeVertSplit = { fg = c.sumiInk3, bg = c.sumiInk0 },
		NeoTreeWinSeparator = { fg = c.sumiInk3, bg = c.sumiInk0 },
		NeoTreeEndOfBuffer = { fg = c.sumiInk0, bg = c.sumiInk0 },
		NeoTreeRootName = { fg = c.carpYellow, bold = true },
		NeoTreeGitModified = { fg = c.carpYellow },
		NeoTreeGitAdded = { fg = c.springGreen },
		NeoTreeGitDeleted = { fg = c.peachRed },
		NeoTreeGitConflict = { fg = c.surimiOrange },
		NeoTreeGitUntracked = { fg = c.waveAqua1 },
		NeoTreeIndentMarker = { fg = c.sumiInk3 },
		NeoTreeDirectoryName = { fg = c.crystalBlue },
		NeoTreeDirectoryIcon = { fg = c.crystalBlue },
		NeoTreeDimText = { fg = c.sumiInk3 },

		-- Gitsigns
		GitSignsAdd = { fg = c.springGreen },
		GitSignsChange = { fg = c.carpYellow },
		GitSignsDelete = { fg = c.peachRed },
		GitSignsCurrentLineBlame = { fg = c.springViolet1 },

		-- Which-key
		WhichKey = { fg = c.crystalBlue },
		WhichKeyGroup = { fg = c.oniViolet },
		WhichKeyDesc = { fg = c.fujiWhite },
		WhichKeyFloat = { bg = c.sumiInk0 },
		WhichKeyBorder = { fg = c.sumiInk3, bg = c.sumiInk0 },

		-- Indent Blankline
		IndentBlanklineChar = { fg = c.sumiInk3 },
		IndentBlanklineContextChar = { fg = c.oniViolet },

		-- Nvim-Cmp
		CmpItemAbbr = { fg = c.fujiWhite },
		CmpItemAbbrMatch = { fg = c.crystalBlue, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = c.crystalBlue },
		CmpItemKind = { fg = c.oniViolet },
		CmpItemMenu = { fg = c.springViolet1 },

		-- Treesitter Context
		TreesitterContext = { bg = c.sumiInk2 },
		TreesitterContextLineNumber = { fg = c.springViolet1 },
	}
end

return M
