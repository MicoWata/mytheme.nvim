-- lua/mytheme/init.lua
local M = {}

function M.load()
	print("Loading theme...")

	-- Clear highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "mytheme"

	-- Define some basic colors
	local colors = {
		bg = "#1F1F28",
		fg = "#DCD7BA",
	}

	-- Set basic highlights directly first
	local highlights = {
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bg },
		SignColumn = { bg = colors.bg },
	}

	-- Apply the highlights
	for group, settings in pairs(highlights) do
		print(string.format("Setting %s with fg=%s bg=%s", group, settings.fg or "none", settings.bg or "none"))
		vim.api.nvim_set_hl(0, group, settings)
	end

	print("Basic highlights set")

	-- Verify highlights were set
	local normal_hl = vim.api.nvim_get_hl(0, { name = "Normal" })
	print("Normal highlight settings:", vim.inspect(normal_hl))
end

-- Keep the setup function for compatibility
function M.setup()
	M.load()
end

return M
