if vim.fn.has("nvim-0.5.1") == 1 then
	vim.lsp.handlers["textDocument/codeAction"] = require("lsputil.codeAction").code_action_handler
	vim.lsp.handlers["textDocument/references"] = require("lsputil.locations").references_handler
	vim.lsp.handlers["textDocument/definition"] = require("lsputil.locations").definition_handler
	vim.lsp.handlers["textDocument/declaration"] = require("lsputil.locations").declaration_handler
	vim.lsp.handlers["textDocument/typeDefinition"] = require("lsputil.locations").typeDefinition_handler
	vim.lsp.handlers["textDocument/implementation"] = require("lsputil.locations").implementation_handler
	vim.lsp.handlers["textDocument/documentSymbol"] = require("lsputil.symbols").document_handler
	vim.lsp.handlers["workspace/symbol"] = require("lsputil.symbols").workspace_handler
else
	local bufnr = vim.api.nvim_buf_get_number(0)

	vim.lsp.handlers["textDocument/codeAction"] = function(_, _, actions)
		require("lsputil.codeAction").code_action_handler(nil, actions, nil, nil, nil)
	end

	vim.lsp.handlers["textDocument/references"] = function(_, _, result)
		require("lsputil.locations").references_handler(nil, result, { bufnr = bufnr }, nil)
	end

	vim.lsp.handlers["textDocument/definition"] = function(_, method, result)
		require("lsputil.locations").definition_handler(nil, result, { bufnr = bufnr, method = method }, nil)
	end

	vim.lsp.handlers["textDocument/declaration"] = function(_, method, result)
		require("lsputil.locations").declaration_handler(nil, result, { bufnr = bufnr, method = method }, nil)
	end

	vim.lsp.handlers["textDocument/typeDefinition"] = function(_, method, result)
		require("lsputil.locations").typeDefinition_handler(nil, result, { bufnr = bufnr, method = method }, nil)
	end

	vim.lsp.handlers["textDocument/implementation"] = function(_, method, result)
		require("lsputil.locations").implementation_handler(nil, result, { bufnr = bufnr, method = method }, nil)
	end

	vim.lsp.handlers["textDocument/documentSymbol"] = function(_, _, result, _, bufn)
		require("lsputil.symbols").document_handler(nil, result, { bufnr = bufn }, nil)
	end

	vim.lsp.handlers["textDocument/symbol"] = function(_, _, result, _, bufn)
		require("lsputil.symbols").workspace_handler(nil, result, { bufnr = bufn }, nil)
	end
end

-- Custom UI Select Overwrite
vim.ui.select = require"popui.ui-overrider"
vim.g.popui_border_style = 'rounded'

-- border_chars (vimscript dictionary/ Lua table) (border characters for list)
local border_chars = {
	TOP_LEFT = "┌",
	TOP_RIGHT = "┐",
	MID_HORIZONTAL = "─",
	MID_VERTICAL = "│",
	BOTTOM_LEFT = "└",
	BOTTOM_RIGHT = "┘",
}

-- LSP utility window popup location setting
vim.g.lsp_utils_location_opts = {
	height = 24,
	mode = "editor",
	list = {
		border = true,
		numbering = true,
		border_chars = border_chars,
	},
	preview = {
		numbering = true,
		title = "Location Preview",
		border = true,
		border_chars = border_chars,
	},
	keymaps = {
		n = {
			["<C-n>"] = "j",
			["<C-p>"] = "k",
		},
	},
}

vim.g.lsp_utils_symbols_opts = {
	height = 20,
	width = 15,
	mode = "editor",
	preview = {
		title = "Symbols Preview",
		border = true,
		border_chars = border_chars,
	},
	prompt = {},
}

vim.g.lsp_utils_codeaction_opts = {
	-- height (integer) (Defines height of window) if value is 0 then
	-- a suitable default height is provided. (Specially for editor mode)
	-- height = 24,
	-- Specify the mode of the code action window:
	-- split (for split previews (default))
	-- editor (for floating previews)
	mode = "editor",
}
