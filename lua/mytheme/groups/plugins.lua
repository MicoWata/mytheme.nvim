-- lua/mytheme/groups/plugins.lua
local M = {}

function M.get(colors)
	return {
		-- Telescope
		TelescopeNormal = { fg = colors.dragonWhite, bg = colors.dragonBlack1 },
		TelescopeBorder = { fg = colors.dragonBlack5, bg = colors.dragonBlack1 },
		TelescopeSelection = { fg = colors.dragonWhite, bg = colors.dragonBlack4 },
		TelescopeSelectionCaret = { fg = colors.dragonYellow, bg = colors.dragonBlack4 },
		TelescopeMultiSelection = { fg = colors.dragonGray },
		TelescopeMatching = { fg = colors.dragonYellow, bold = true },
		TelescopePromptNormal = { fg = colors.dragonWhite, bg = colors.dragonBlack1 },
		TelescopePromptPrefix = { fg = colors.dragonViolet },
		TelescopeResultsDiffAdd = { fg = colors.autumnGreen },
		TelescopeResultsDiffChange = { fg = colors.autumnYellow },
		TelescopeResultsDiffDelete = { fg = colors.autumnRed },

		-- Neo-tree
		NeoTreeNormal = { fg = colors.dragonWhite, bg = colors.dragonBlack1 },
		NeoTreeNormalNC = { fg = colors.dragonWhite, bg = colors.dragonBlack1 },
		NeoTreeVertSplit = { fg = colors.dragonBlack5, bg = colors.dragonBlack1 },
		NeoTreeWinSeparator = { fg = colors.dragonBlack5, bg = colors.dragonBlack1 },
		NeoTreeEndOfBuffer = { fg = colors.dragonBlack1, bg = colors.dragonBlack1 },
		NeoTreeRootName = { fg = colors.dragonYellow, bold = true },
		NeoTreeGitAdded = { fg = colors.autumnGreen },
		NeoTreeGitModified = { fg = colors.autumnYellow },
		NeoTreeGitDeleted = { fg = colors.autumnRed },
		NeoTreeGitStaged = { fg = colors.autumnGreen },
		NeoTreeGitConflict = { fg = colors.autumnRed, italic = true },
		NeoTreeGitUntracked = { fg = colors.dragonYellow },
		NeoTreeIndentMarker = { fg = colors.dragonBlack5 },
		NeoTreeSymbolicLinkTarget = { fg = colors.dragonGray },

		-- Gitsigns
		GitSignsAdd = { fg = colors.autumnGreen },
		GitSignsChange = { fg = colors.autumnYellow },
		GitSignsDelete = { fg = colors.autumnRed },
		GitSignsCurrentLineBlame = { fg = colors.dragonGray },

		-- Lazy
		LazyNormal = { fg = colors.dragonWhite, bg = colors.dragonBlack1 },
		LazyButtonActive = { fg = colors.dragonWhite, bg = colors.dragonBlack4, bold = true },
		LazyButtonHover = { fg = colors.dragonWhite, bg = colors.dragonBlack5 },
		LazyH1 = { fg = colors.dragonYellow, bg = colors.dragonBlack3, bold = true },

		-- WhichKey
		WhichKey = { fg = colors.dragonBlue },
		WhichKeyGroup = { fg = colors.dragonViolet },
		WhichKeyDesc = { fg = colors.dragonYellow },
		WhichKeyFloat = { bg = colors.dragonBlack1 },
		WhichKeyBorder = { fg = colors.dragonBlack5, bg = colors.dragonBlack1 },

		-- Indent Blankline
		IndentBlanklineChar = { fg = colors.dragonBlack5 },
		IndentBlanklineContextChar = { fg = colors.dragonViolet },

		-- Notify
		NotifyERRORBorder = { fg = colors.samuraiRed },
		NotifyWARNBorder = { fg = colors.roninYellow },
		NotifyINFOBorder = { fg = colors.autumnGreen },
		NotifyDEBUGBorder = { fg = colors.dragonGray },
		NotifyTRACEBorder = { fg = colors.dragonAqua },
		NotifyERRORIcon = { fg = colors.samuraiRed },
		NotifyWARNIcon = { fg = colors.roninYellow },
		NotifyINFOIcon = { fg = colors.autumnGreen },
		NotifyDEBUGIcon = { fg = colors.dragonGray },
		NotifyTRACEIcon = { fg = colors.dragonAqua },
		NotifyERRORTitle = { fg = colors.samuraiRed, bold = true },
		NotifyWARNTitle = { fg = colors.roninYellow, bold = true },
		NotifyINFOTitle = { fg = colors.autumnGreen, bold = true },
		NotifyDEBUGTitle = { fg = colors.dragonGray, bold = true },
		NotifyTRACETitle = { fg = colors.dragonAqua, bold = true },
	}
end

return M
