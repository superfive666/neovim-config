vim.cmd [[
try
  colorscheme night-owl
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
