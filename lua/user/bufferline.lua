local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup {
	options = {
		close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
	},
	highlights = {
		separator_selected = {
			fg = "#ffd43b",
			bg = "#ffd43b",
		},
		separator_visible = {
			fg = "#ffd43b",
			--[[ bg = '<colour-value-here>' ]]
		},
		separator = {
			fg = "#ffd43b",
			--[[ bg = '<colour-value-here>' ]]
		},

	}
}
