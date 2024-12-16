-- lua/mytheme/colors.lua
local M = {}

-- Palette
local colors = {
	-- Base colors
	sumiInk0 = "#16161D", -- Darkest background
	sumiInk1 = "#1F1F28", -- Dark background
	sumiInk2 = "#2A2A37", -- Default background
	sumiInk3 = "#363646", -- Lighter background
	sumiInk4 = "#54546D", -- Darker foreground

	-- Popup and Floats
	waveBlue1 = "#223249", -- Dark blue background
	waveBlue2 = "#2D4F67", -- Lighter blue background

	-- Foreground and Comments
	oldWhite = "#C8C093", -- Default foreground
	fujiWhite = "#DCD7BA", -- Light foreground
	fujiGray = "#727169", -- Dark foreground
	springViolet1 = "#938AA9", -- Comments

	-- Strings and Keywords
	oniViolet = "#957FB8", -- Violet for keywords
	crystalBlue = "#7E9CD8", -- Blue for functions
	springGreen = "#98BB6C", -- Green for strings
	boatYellow1 = "#938056", -- Dark yellow
	boatYellow2 = "#C0A36E", -- Light yellow
	carpYellow = "#E6C384", -- Bright yellow

	-- Variables and Constants
	sakuraPink = "#D27E99", -- Pink for variables
	waveAqua1 = "#6A9589", -- Dark aqua
	waveAqua2 = "#7AA89F", -- Light aqua

	-- Warnings and Errors
	samuraiRed = "#E82424", -- Error red
	peachRed = "#FF5D62", -- Lighter red
	surimiOrange = "#FFA066", -- Warning orange

	-- Git colors
	autumnGreen = "#76946A", -- Git Add
	autumnRed = "#C34043", -- Git Delete
	autumnYellow = "#DCA561", -- Git Change
}

-- Semantic color groups
M.groups = {
	bg = {
		dark = colors.sumiInk0,
		main = colors.sumiInk1,
		light = colors.sumiInk2,
		lighter = colors.sumiInk3,
	},
	fg = {
		dark = colors.fujiGray,
		main = colors.fujiWhite,
		light = colors.oldWhite,
	},
	ui = {
		float = colors.waveBlue1,
		selection = colors.waveBlue2,
		comment = colors.springViolet1,
	},
	syntax = {
		func = colors.crystalBlue,
		keyword = colors.oniViolet,
		string = colors.springGreen,
		variable = colors.sakuraPink,
		constant = colors.carpYellow,
		number = colors.sakuraPink,
		type = colors.waveAqua2,
		parameter = colors.boatYellow2,
	},
	diag = {
		error = colors.samuraiRed,
		warning = colors.surimiOrange,
		info = colors.waveAqua2,
		hint = colors.boatYellow1,
	},
	git = {
		add = colors.autumnGreen,
		change = colors.autumnYellow,
		delete = colors.autumnRed,
	},
}

-- Raw colors
M.colors = colors

return M
