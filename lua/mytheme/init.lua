-- lua/mytheme/init.lua
local M = {}

function M.setup()
	-- Clear existing highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Set colorscheme name
	vim.g.colors_name = "mytheme"

	-- Get colors
	local colors = require("mytheme.colors")

	-- Load editor highlights
	local editor_highlights = require("mytheme.groups.editor").get(colors.groups)

	-- Apply highlights
	for group, settings in pairs(editor_highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return M
