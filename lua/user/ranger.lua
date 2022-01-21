-- Make Ranger replace netrw and be the file explorer
vim.g.rnvimr_ex_enable = 1

-- Change the border's color
vim.g.rnvimr_border_attr = {
  fg = 14;
  bg = -1;
}

-- Make Neovim wipe the buffers corresponding to the files deleted by Ranger
vim.g.rnvimr_enable_bw = 1

-- Draw border with both
vim.g.rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'

-- For remapping of the keys for toggling ranger windows
-- please refer to whichkey.lua file
