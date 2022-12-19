local status_ok, transparent = pcall(require, "transparent")
if not status_ok then
	print("require transparent plugin command failed")
	return
end

transparent.setup {
  -- default is not enable to be toggled
  enable = true,
  groups = {
    "Normal",
    "NormalNC",
    "Comment",
    "Constant",
    "Special",
    "Identifier",
    "Statement",
    "PreProc",
    "Type",
    "Underlined",
    "Todo",
    "String",
    "Function",
    "Conditional",
    "Repeat",
    "Operator",
    "Structure",
    "LineNr",
    "NonText",
    "SignColumn",
    "CursorLineNr",
    "EndOfBuffer"
  },
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups
    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",

    -- nvim-tree groups all transparent
    "NvimTreeSymlink",
    "NvimTreeFolderName",
    "NvimTreeRootFolder",
    "NvimTreeFolderIcon",
    "NvimTreeOpenedFolderIcon",
    "NvimTreeClosedFolderIcon",
    "NvimTreeFileIcon",
    "NvimTreeEmptyFolderName",
    "NvimTreeOpenedFolderName",
    "NvimTreeExecFile",
    "NvimTreeOpenedFile",
    "NvimTreeSpecialFile",
    "NvimTreeImageFile",
    "NvimTreeIndentMarker",
    "NvimTreeLspDiagnosticsError",
    "NvimTreeLspDiagnosticsWarning",
    "NvimTreeLspDiagnosticsInformation",
    "NvimTreeLspDiagnosticsHint",
    "NvimTreeGitDirty",
    "NvimTreeGitStaged",
    "NvimTreeGitMerge",
    "NvimTreeGitRenamed",
    "NvimTreeGitNew",
    "NvimTreeGitDeleted",
    "NvimTreeGitIgnored",
    "NvimTreeWindowPicker",
    "NvimTreeNormal",
    "NvimTreeNormalNC",
    "NvimTreeCursorLine",
    "NvimTreeEndOfBuffer",
    "NvimTreeCursorLineNr",
    "NvimTreeLineNr",
    "NvimTreeWinSeparator",
    "NvimTreeCursorColumn",
    "NvimTreeFileDirty",
    "NvimTreeFileStaged",
    "NvimTreeFileMerge",
    "NvimTreeFileRenamed",
    "NvimTreeFileNew",
    "NvimTreeFileDeleted",
    "NvimTreeFileIgnored",
    "NvimTreeLiveFilterPrefix",
    "NvimTreeLiveFilterValue",
    "NvimTreeBookmark"
  },
  exclude = {}
}

