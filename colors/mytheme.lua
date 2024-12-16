-- colors/mytheme.lua
print("Loading mytheme colorscheme...")
if vim == nil then
	return
end

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "mytheme"
print("About to require mytheme setup...")
require("mytheme").setup()
print("Mytheme setup complete!")
