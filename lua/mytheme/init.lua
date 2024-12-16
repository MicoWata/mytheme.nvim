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
		-- Base colors
		sumiInk0 = "#16161D",
		sumiInk1 = "#1F1F28",
		sumiInk2 = "#2A2A37",
		sumiInk3 = "#363646",
		fujiWhite = "#DCD7BA",
		oldWhite = "#C8C093",

		-- Syntax
		springViolet1 = "#938AA9", -- comments
		oniViolet = "#957FB8", -- keywords, statements
		crystalBlue = "#7E9CD8", -- functions
		springGreen = "#98BB6C", -- strings
		boatYellow2 = "#C0A36E", -- parameters
		carpYellow = "#E6C384", -- operators, variables
		surimiOrange = "#FFA066", -- constants
		sakuraPink = "#D27E99", -- numbers
		waveAqua1 = "#6A9589", -- types
		peachRed = "#FF5D62", -- special syntax
	}

	-- Define highlight groups
	local highlights = {
		-- Editor UI
		Normal = { fg = colors.fujiWhite, bg = colors.sumiInk1 },
		NormalFloat = { fg = colors.fujiWhite, bg = colors.sumiInk0 },
		SignColumn = { bg = colors.sumiInk1 },
		ColorColumn = { bg = colors.sumiInk2 },
		CursorLine = { bg = colors.sumiInk2 },
		CursorLineNr = { fg = colors.carpYellow, bold = true },
		LineNr = { fg = colors.springViolet1 },

		-- Basic syntax
		Comment = { fg = colors.springViolet1, italic = true },
		Constant = { fg = colors.surimiOrange },
		String = { fg = colors.springGreen },
		Character = { fg = colors.springGreen },
		Number = { fg = colors.sakuraPink },
		Boolean = { fg = colors.surimiOrange },
		Float = { fg = colors.sakuraPink },

		Identifier = { fg = colors.fujiWhite },
		Function = { fg = colors.crystalBlue },

		Statement = { fg = colors.oniViolet },
		Conditional = { fg = colors.oniViolet },
		Repeat = { fg = colors.oniViolet },
		Label = { fg = colors.oniViolet },
		Operator = { fg = colors.carpYellow },
		Keyword = { fg = colors.oniViolet },
		Exception = { fg = colors.oniViolet },

		PreProc = { fg = colors.peachRed },
		Include = { fg = colors.peachRed },
		Define = { fg = colors.peachRed },
		Macro = { fg = colors.peachRed },
		PreCondit = { fg = colors.peachRed },

		Type = { fg = colors.waveAqua1 },
		StorageClass = { fg = colors.oniViolet },
		Structure = { fg = colors.oniViolet },
		Typedef = { fg = colors.waveAqua1 },

		Special = { fg = colors.peachRed },
		SpecialChar = { fg = colors.peachRed },
		Tag = { fg = colors.peachRed },
		Delimiter = { fg = colors.fujiWhite },
		SpecialComment = { fg = colors.springViolet1, italic = true },
		Debug = { fg = colors.peachRed },

		-- Tree-sitter specific
		["@variable"] = { fg = colors.fujiWhite },
		["@parameter"] = { fg = colors.boatYellow2 },
		["@function"] = { fg = colors.crystalBlue },
		["@function.builtin"] = { fg = colors.crystalBlue },
		["@keyword"] = { fg = colors.oniViolet },
		["@keyword.function"] = { fg = colors.oniViolet },
		["@keyword.operator"] = { fg = colors.oniViolet },
		["@method"] = { fg = colors.crystalBlue },
		["@property"] = { fg = colors.carpYellow },
		["@field"] = { fg = colors.carpYellow },
		["@constructor"] = { fg = colors.surimiOrange },
		["@conditional"] = { fg = colors.oniViolet },
		["@repeat"] = { fg = colors.oniViolet },
		["@constant"] = { fg = colors.surimiOrange },
		["@constant.builtin"] = { fg = colors.surimiOrange },

		-- Menus
		Pmenu = { fg = colors.fujiWhite, bg = colors.sumiInk0 },
		PmenuSel = { fg = colors.fujiWhite, bg = colors.sumiInk2 },

		-- Search and Selection
		Search = { fg = colors.sumiInk0, bg = colors.carpYellow },
		Visual = { bg = colors.sumiInk3 },
	}

	-- Apply highlights
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

function M.setup()
	M.load()
end

return M
