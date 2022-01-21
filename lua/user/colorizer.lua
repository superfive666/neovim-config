local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
	print("colorizer not imported correctly")
	return
end

-- if the import of the colorizer is ok,
-- configure the colorizer options
colorizer.setup({
	-- Use the `default_options` as the second parameter, which uses
	-- `foreground` for every mode. This is the inverse of the previous
	-- setup configuration.
	"*",
	-- javascript = {
	-- 	RGB = true, -- #RGB hex codes
	-- 	RRGGBB = true, -- #RRGGBB hex codes
	-- 	names = true, -- "Name" codes like Blue
	-- 	RRGGBBAA = false, -- #RRGGBBAA hex codes
	-- 	rgb_fn = true, -- CSS rgb() and rgba() functions
	-- 	hsl_fn = false, -- CSS hsl() and hsla() functions
	-- 	css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	-- 	css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
	-- 	-- Available modes: foreground, background
	-- 	mode = "background", -- Set the display mode.
	-- }
})
