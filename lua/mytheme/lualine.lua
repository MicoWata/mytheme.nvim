-- lua/mytheme/lualine.lua
local M = {}

function M.get()
	local colors = {
		-- Dragon variant colors
		bg = "#12120f", -- dragonBlack1
		bg_dark = "#0d0c0c", -- dragonBlack0
		bg_light = "#1D1C19", -- dragonBlack2
		fg = "#c5c9c5", -- dragonWhite
		fg_dark = "#625e5a", -- dragonBlack6
		yellow = "#c4b28a", -- dragonYellow
		violet = "#957fb8", -- dragonViolet
		blue = "#7e9cd8", -- dragonBlue
		green = "#87a987", -- dragonGreen
		orange = "#ffa066", -- dragonOrange
		red = "#e46876", -- dragonRed
	}

	return {
		normal = {
			a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
			b = { fg = colors.fg, bg = colors.bg_light },
			c = { fg = colors.fg_dark, bg = colors.bg },
		},
		insert = {
			a = { fg = colors.bg, bg = colors.green, gui = "bold" },
			b = { fg = colors.fg, bg = colors.bg_light },
			c = { fg = colors.fg_dark, bg = colors.bg },
		},
		visual = {
			a = { fg = colors.bg, bg = colors.violet, gui = "bold" },
			b = { fg = colors.fg, bg = colors.bg_light },
			c = { fg = colors.fg_dark, bg = colors.bg },
		},
		replace = {
			a = { fg = colors.bg, bg = colors.red, gui = "bold" },
			b = { fg = colors.fg, bg = colors.bg_light },
			c = { fg = colors.fg_dark, bg = colors.bg },
		},
		command = {
			a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
			b = { fg = colors.fg, bg = colors.bg_light },
			c = { fg = colors.fg_dark, bg = colors.bg },
		},
		inactive = {
			a = { fg = colors.fg_dark, bg = colors.bg_dark },
			b = { fg = colors.fg_dark, bg = colors.bg_dark },
			c = { fg = colors.fg_dark, bg = colors.bg_dark },
		},
	}
end

return M
