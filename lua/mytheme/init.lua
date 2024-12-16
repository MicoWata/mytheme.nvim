-- lua/mytheme/groups/syntax.lua
local M = {}

function M.get(c)
	return {
		-- Basic syntax
		Comment = { fg = c.springViolet1, italic = true },
		Constant = { fg = c.surimiOrange },
		String = { fg = c.springGreen },
		Character = { fg = c.springGreen },
		Number = { fg = c.sakuraPink },
		Boolean = { fg = c.surimiOrange },
		Float = { fg = c.sakuraPink },

		Identifier = { fg = c.fujiWhite },
		Function = { fg = c.crystalBlue },

		Statement = { fg = c.oniViolet },
		Conditional = { fg = c.oniViolet },
		Repeat = { fg = c.oniViolet },
		Label = { fg = c.oniViolet },
		Operator = { fg = c.carpYellow },
		Keyword = { fg = c.oniViolet },
		Exception = { fg = c.oniViolet },

		PreProc = { fg = c.peachRed },
		Include = { fg = c.peachRed },
		Define = { fg = c.peachRed },
		Macro = { fg = c.peachRed },
		PreCondit = { fg = c.peachRed },

		Type = { fg = c.waveAqua1 },
		StorageClass = { fg = c.oniViolet },
		Structure = { fg = c.oniViolet },
		Typedef = { fg = c.waveAqua1 },

		Special = { fg = c.peachRed },
		SpecialChar = { fg = c.peachRed },
		Tag = { fg = c.peachRed },
		Delimiter = { fg = c.fujiWhite },
		SpecialComment = { fg = c.springViolet1, italic = true },
		Debug = { fg = c.peachRed },

		-- TreeSitter
		["@variable"] = { fg = c.fujiWhite },
		["@parameter"] = { fg = c.boatYellow2 },
		["@function"] = { fg = c.crystalBlue },
		["@function.builtin"] = { fg = c.crystalBlue },
		["@keyword"] = { fg = c.oniViolet },
		["@keyword.function"] = { fg = c.oniViolet },
		["@keyword.operator"] = { fg = c.oniViolet },
		["@method"] = { fg = c.crystalBlue },
		["@property"] = { fg = c.carpYellow },
		["@field"] = { fg = c.carpYellow },
		["@constructor"] = { fg = c.surimiOrange },
		["@conditional"] = { fg = c.oniViolet },
		["@repeat"] = { fg = c.oniViolet },
		["@constant"] = { fg = c.surimiOrange },
		["@constant.builtin"] = { fg = c.surimiOrange },

		-- Java specific
		["@keyword.java"] = { fg = c.oniViolet },
		["@type.java"] = { fg = c.waveAqua1 },
		["@property.java"] = { fg = c.carpYellow },
		["@variable.java"] = { fg = c.fujiWhite },
		["@parameter.java"] = { fg = c.boatYellow2 },
		["@function.java"] = { fg = c.crystalBlue },
		["@method.java"] = { fg = c.crystalBlue },
		["@keyword.function.java"] = { fg = c.oniViolet },
		["@constant.java"] = { fg = c.surimiOrange },
		["@constructor.java"] = { fg = c.surimiOrange },
		["@conditional.java"] = { fg = c.oniViolet },
		["@exception.java"] = { fg = c.oniViolet },
		["@include.java"] = { fg = c.oniViolet },
		["@repeat.java"] = { fg = c.oniViolet },
		["@storageclass.java"] = { fg = c.oniViolet },
		["@type.qualifier.java"] = { fg = c.oniViolet },

		-- LSP Semantic tokens
		["@lsp.type.class.java"] = { fg = c.waveAqua1 },
		["@lsp.type.enum.java"] = { fg = c.waveAqua1 },
		["@lsp.type.interface.java"] = { fg = c.waveAqua1 },
		["@lsp.type.keyword.java"] = { fg = c.oniViolet },
		["@lsp.type.modifier.java"] = { fg = c.oniViolet },
		["@lsp.type.variable.java"] = { fg = c.fujiWhite },
		["@lsp.type.parameter.java"] = { fg = c.boatYellow2 },
		["@lsp.type.function.java"] = { fg = c.crystalBlue },
		["@lsp.type.method.java"] = { fg = c.crystalBlue },
		["@lsp.typeParameter.java"] = { fg = c.waveAqua1 },
		["@lsp.mod.readonly.java"] = { fg = c.surimiOrange },
		["@lsp.mod.static.java"] = { fg = c.oniViolet },
	}
end

return M
