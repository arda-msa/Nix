swayimg.text.size = 16
swayimg.viewer.default_scale = "fit"
swayimg.slideshow.timeout = 5

-- Start with the overlay hidden.
-- Toggle with the default `t`.
swayimg.text.visible = false

-- Reset to fit with `0`, original size with `1`.
swayimg.viewer.on_key("0", function()
	swayimg.viewer.reset()
end)
swayimg.viewer.on_key("1", function()
	swayimg.viewer.scale = 1.0
end)

-- Quit with `q`.
swayimg.viewer.on_key("q", function()
	swayimg.exit()
end)
swayimg.gallery.on_key("q", function()
	swayimg.exit()
end)
swayimg.slideshow.on_key("q", function()
	swayimg.exit()
end)
