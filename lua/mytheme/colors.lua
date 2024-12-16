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

	-- Exact Kanagawa colors from original theme
	local colors = {
		-- Primary Background and Foreground
		sumiInk0 = "#16161D", -- darker background
		sumiInk1 = "#1F1F28", -- default background
		sumiInk2 = "#2A2A37", -- lighter background
		sumiInk3 = "#363646", -- lightest background
		fujiWhite = "#DCD7BA", -- default foreground
		oldWhite = "#C8C093", -- darker foreground

		-- Syntax Colors
		springViolet1 = "#8992a7", -- comments
		crystalBlue = "#658594", -- functions, keywords
		springGreen = "#87a987", -- strings
		sakuraPink = "#D27E99", -- special characters
		surimiOrange = "#FFA066", -- constants
		carpYellow = "#E6C384", -- operators
		waveAqua1 = "#6A9589", -- types

		dragonBlack0 = "#0d0c0c",
		dragonBlack1 = "#12120f",
		dragonBlack2 = "#1D1C19",
		dragonBlack3 = "#181616",
		dragonBlack4 = "#282727",
		dragonBlack5 = "#393836",
		dragonBlack6 = "#625e5a",

		dragonWhite = "#c5c9c5",
		dragonGreen = "#87a987",
		dragonGreen2 = "#8a9a7b",
		dragonPink = "#a292a3",
		dragonOrange = "#b6927b",
		dragonOrange2 = "#b98d7b",
		dragonGray = "#a6a69c",
		dragonGray2 = "#9e9b93",
		dragonGray3 = "#7a8382",
		dragonBlue = "#658594",
		dragonBlue2 = "#8ba4b0",
		dragonViolet = "#8992a7",
		dragonRed = "#c4746e",
		dragonAqua = "#8ea4a2",
		dragonAsh = "#737c73",
		dragonTeal = "#949fb5",
		dragonYellow = "#c4b28a", --"#a99c8b",
		-- "#8a9aa3",
	}

	-- Define highlight groups using exact colors
	local highlights = {
		-- Editor UI
		Normal = { fg = colors.fujiWhite, bg = colors.sumiInk1 },
		NormalFloat = { fg = colors.fujiWhite, bg = colors.sumiInk0 },
		SignColumn = { bg = colors.sumiInk1 },
		ColorColumn = { bg = colors.sumiInk2 },
		CursorLine = { bg = colors.sumiInk2 },
		CursorLineNr = { fg = colors.carpYellow, bold = true },
		LineNr = { fg = colors.springViolet1 },

		-- Syntax highlighting
		Comment = { fg = colors.springViolet1, italic = true },
		String = { fg = colors.springGreen },
		Number = { fg = colors.sakuraPink },
		Identifier = { fg = colors.fujiWhite },
		Function = { fg = colors.crystalBlue },
		Statement = { fg = colors.crystalBlue },
		Keyword = { fg = colors.crystalBlue },
		Constant = { fg = colors.surimiOrange },
		Type = { fg = colors.sakuraPink },
		Special = { fg = colors.sakuraPink },

		-- Menus and Windows
		Pmenu = { fg = colors.fujiWhite, bg = colors.sumiInk0 },
		PmenuSel = { fg = colors.fujiWhite, bg = colors.sumiInk2 },

		-- Search and Selection
		Search = { fg = colors.sumiInk0, bg = colors.carpYellow },
		Visual = { bg = colors.sumiInk3 },
	}

	-- Apply all highlights
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

function M.setup()
	M.load()
end

return M
