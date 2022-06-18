
local status_ok, lspLines = pcall(require, "lsp_lines")
if not status_ok then
  return
end

lspLines.register_lsp_virtual_lines()
