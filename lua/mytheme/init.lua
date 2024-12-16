-- lua/mytheme/init.lua
local M = {}

function M.load()
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "mytheme"

	local colors = {
		-- Dragon variant base colors (darker and warmer)
		dragonBlack0 = "#0d0c0c",
		dragonBlack1 = "#12120f",
		dragonBlack2 = "#1D1C19",
		dragonBlack3 = "#181616",
		dragonBlack4 = "#282727",
		dragonBlack5 = "#393836",
		dragonBlack6 = "#625e5a",

		dragonWhite = "#c5c9c5", -- foreground
		oldWhite = "#c8c093", -- warmer white

		-- Syntax colors (dragon palette)
		dragonGray = "#a6a69c", -- comments
		dragonBlue = "#7e9cd8", -- functions
		dragonViolet = "#957fb8", -- keywords
		dragonGreen = "#87a987", -- strings
		dragonYellow = "#c4b28a", -- operators
		dragonOrange = "#ffa066", -- constants
		dragonRed = "#e46876", -- special
		dragonPink = "#d27e99", -- numbers
		dragonAqua = "#7AA89F", -- types

		-- Additional colors
		roninYellow = "#ff9e3b", -- warnings
		autumnGreen = "#76946a", -- git add
		autumnRed = "#c34043", -- git delete
		autumnYellow = "#dca561", -- git change
		samuraiRed = "#E82424", -- errors
		waveBlue1 = "#223249", -- darker blue
		waveBlue2 = "#2D4F67", -- lighter blue
	}

	-- Define highlight groups
	local highlights = {
		-- Editor UI
		Normal = { fg = colors.dragonWhite, bg = colors.dragonBlack3 },
		NormalFloat = { fg = colors.dragonWhite, bg = colors.dragonBlack1 },
		SignColumn = { bg = colors.dragonBlack3 },
		ColorColumn = { bg = colors.dragonBlack4 },
		CursorLine = { bg = colors.dragonBlack4 },
		CursorLineNr = { fg = colors.dragonYellow, bold = true },
		LineNr = { fg = colors.dragonBlack6 },

		-- Basic syntax
		Comment = { fg = colors.dragonGray, italic = true },
		Constant = { fg = colors.dragonOrange },
		String = { fg = colors.dragonGreen },
		Character = { fg = colors.dragonGreen },
		Number = { fg = colors.dragonPink },
		Boolean = { fg = colors.dragonOrange },
		Float = { fg = colors.dragonPink },

		Identifier = { fg = colors.dragonWhite },
		Function = { fg = colors.dragonBlue },

		Statement = { fg = colors.dragonViolet },
		Conditional = { fg = colors.dragonViolet },
		Repeat = { fg = colors.dragonViolet },
		Label = { fg = colors.dragonViolet },
		Operator = { fg = colors.dragonYellow },
		Keyword = { fg = colors.dragonViolet },
		Exception = { fg = colors.dragonViolet },

		PreProc = { fg = colors.dragonRed },
		Include = { fg = colors.dragonRed },
		Define = { fg = colors.dragonRed },
		Macro = { fg = colors.dragonRed },
		PreCondit = { fg = colors.dragonRed },

		Type = { fg = colors.dragonAqua },
		StorageClass = { fg = colors.dragonViolet },
		Structure = { fg = colors.dragonViolet },
		Typedef = { fg = colors.dragonAqua },

		Special = { fg = colors.dragonRed },
		SpecialChar = { fg = colors.dragonRed },
		Tag = { fg = colors.dragonRed },
		Delimiter = { fg = colors.dragonWhite },
		SpecialComment = { fg = colors.dragonGray, italic = true },
		Debug = { fg = colors.dragonRed },

		-- Java specific highlighting
		["@keyword.java"] = { fg = colors.dragonViolet },
		["@type.java"] = { fg = colors.dragonAqua },
		["@property.java"] = { fg = colors.dragonYellow },
		["@variable.java"] = { fg = colors.dragonWhite },
		["@parameter.java"] = { fg = colors.oldWhite },
		["@function.java"] = { fg = colors.dragonBlue },
		["@method.java"] = { fg = colors.dragonBlue },
		["@keyword.function.java"] = { fg = colors.dragonViolet },
		["@constant.java"] = { fg = colors.dragonOrange },
		["@constructor.java"] = { fg = colors.dragonOrange },
		["@conditional.java"] = { fg = colors.dragonViolet },
		["@exception.java"] = { fg = colors.dragonViolet },
		["@include.java"] = { fg = colors.dragonViolet },
		["@repeat.java"] = { fg = colors.dragonViolet },
		["@storageclass.java"] = { fg = colors.dragonViolet },
		["@type.qualifier.java"] = { fg = colors.dragonViolet },

		-- LSP Semantic tokens for Java
		["@lsp.type.class.java"] = { fg = colors.dragonAqua },
		["@lsp.type.enum.java"] = { fg = colors.dragonAqua },
		["@lsp.type.interface.java"] = { fg = colors.dragonAqua },
		["@lsp.type.keyword.java"] = { fg = colors.dragonViolet },
		["@lsp.type.modifier.java"] = { fg = colors.dragonViolet },
		["@lsp.type.variable.java"] = { fg = colors.dragonWhite },
		["@lsp.type.parameter.java"] = { fg = colors.oldWhite },
		["@lsp.type.function.java"] = { fg = colors.dragonBlue },
		["@lsp.type.method.java"] = { fg = colors.dragonBlue },
		["@lsp.typeParameter.java"] = { fg = colors.dragonAqua },
		["@lsp.mod.readonly.java"] = { fg = colors.dragonOrange },
		["@lsp.mod.static.java"] = { fg = colors.dragonViolet },

		-- Menus and Windows
		Pmenu = { fg = colors.dragonWhite, bg = colors.dragonBlack1 },
		PmenuSel = { fg = colors.dragonWhite, bg = colors.dragonBlack4 },

		-- Search and Selection
		Search = { fg = colors.dragonBlack1, bg = colors.dragonYellow },
		Visual = { bg = colors.dragonBlack5 },
	}

	-- Load plugin highlights
	local plugin_highlights = require("mytheme.groups.plugins").get(colors)

	-- Merge all highlights
	for group, settings in pairs(plugin_highlights) do
		highlights[group] = settings
	end

	-- Apply all highlights
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

function M.setup()
	M.load()
end

return M
