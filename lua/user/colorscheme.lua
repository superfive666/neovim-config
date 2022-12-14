vim.cmd [[
try
  colorscheme tokyonight-moon
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
