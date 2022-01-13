local status_ok, hop = pcall(require, "hop")
if not status_ok then
  print("require hop plugin comman failed")
	return
end

hop.setup({
  keys = "etovxqpdygfblzhckisuran"
})
