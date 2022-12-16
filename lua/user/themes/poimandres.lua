local status_ok, poimandres = pcall(require, "poimandres")
if not status_ok then
	return
end

poimandres.setup({
	-- any custom configuration
})

vim.cmd"colorscheme poimandres"
