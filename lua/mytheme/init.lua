local M = {}

function M.setup()
	print("Starting mytheme setup...")
	-- Clear existing highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Set colorscheme name
	vim.g.colors_name = "mytheme"

	-- Get colors
	print("Loading colors...")
	local colors = require("mytheme.colors")

	-- Load editor highlights
	print("Loading editor highlights...")
	local editor_highlights = require("mytheme.groups.editor").get(colors.groups)

	-- Apply highlights
	print("Applying highlights...")
	for group, settings in pairs(editor_highlights) do
		print(string.format("Setting highlight for %s", group))
		vim.api.nvim_set_hl(0, group, settings)
	end
	print("Mytheme setup complete!")
end

return M
