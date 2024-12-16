local M = {}

function M.setup(opts)
	local colors = require("mytheme.colors")

	-- Load all highlight group categories
	local editor = require("mytheme.groups.editor").get(colors)
	local syntax = require("mytheme.groups.syntax").get(colors)
	local lsp = require("mytheme.groups.lsp").get(colors)

	-- Combine all highlights
	local highlights = vim.tbl_extend(
		"force",
		editor,
		syntax,
		lsp
		-- add other categories
	)

	-- Apply highlights
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

function M.load()
	-- This will be used later when we add more highlight groups
	local colors = require("mytheme.colors")
	return require("mytheme.groups.editor").get(colors.groups)
end

return M
