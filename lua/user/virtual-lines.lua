
local status_ok, lspLines = pcall(require, "lsp_lines")
if not status_ok then
  return
end

lspLines.setup()
local isEnabled = true

function _TOGGLE_VIRTUAL_LINES()
	if isEnabled == true then
		isEnabled = false
	else
		isEnabled = true
	end
	vim.diagnostic.config({ virtual_lines = isEnabled })
end
