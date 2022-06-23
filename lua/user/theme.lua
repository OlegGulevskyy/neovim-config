local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
	return
end

catppuccin.setup({
	integration = {
		nvimtree = {
			enabled = true,
			show_root = false,
			transparent_panel = false,
		},
		indent_blankline = {
			enabled = true,
			color_indent_levels = true,
		},
		gitsigns = true,
	}
})

vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]
