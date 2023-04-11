local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()
parser_configs.cmake = {
  install_info = {
    url = 'https://github.com/uyha/tree-sitter-cmake',
    files = {"src/parser.c"}
  }
}

configs.setup({
	ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
	ignore_install = { "" }, -- List of parsers to ignore installing
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	matchup = {
		-- andymess/vim-match integration with treesitter
		enable = true, -- mandatory, false will disable the whole extension
		disable = { "c", "ruby" },
		-- [other options]
	},
})

-- below configs for andymess/vim-match
-- match-up should automatically disable matchit and matchparen
-- the below is for still having trouble loading the plugin
vim.g.loaded_matchit = 1

-- If a open or close which would have been highlighted is on a line positioned outside the current window,
-- the match is shown in the status line or popup window. If both the open and close match are off-screen,
-- the close match is preferred.
-- For popup style (supported in recent vim and neovim versions):
vim.g.matchup_matchparen_offscreen = { method = "popup", border = "shadow" }
-- For status line style (default):
-- vim.g.matchup_matchparen_offscreen = { method = "status", border = "shadow" }

-- To enable the delete surrounding (ds%) and change surrounding (cs%) maps:
vim.g.matchup_surround_enabled = true

-- Deferred highlighting improves cursor movement performance
-- (for example, when using hjkl) by delaying highlighting for a short time
-- and waiting to see if the cursor continues moving;
vim.g.matchup_matchparen_deferred = true
